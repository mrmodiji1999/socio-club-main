// ignore_for_file: non_constant_identifier_names, must_be_immutable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rss_feed/screens/webview.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;

class ReusedPage extends StatefulWidget {
  String url;
  String title;
  ReusedPage({
    Key? key,
    required this.url,
    required this.title,
  }) : super(key: key);

  @override
  ReusedPageState createState() => ReusedPageState();
}

class ReusedPageState extends State<ReusedPage> {
  bool isGrid = true;
  // static const String ${widget.url} = 'https://www.hahahumor.com/feed/';
  // String ${widget.url} = 'https://www.news18.com/rss/india.xml';
  RssFeed? _feed;
  // static const String loadingFeedMsg = 'Loading Feed...';
  // static const String feedLoadErrorMsg = 'Error Loading Feed.';
  // static const String feedOpenErrorMsg = 'Error Opening Feed.';
  // static const String placeholderImg = 'assets/images/no_image.jpg';
  GlobalKey<RefreshIndicatorState>? _refreshKey;

  updateFeed(feed) {
    setState(() {
      _feed = feed;
    });
  }

  Future<void> openFeed(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(
        url,
      );
      return;
    }
  }

  load() async {
    loadFeed().then((result) {
      if (null == result || result.toString().isEmpty) {
        return;
      }
      updateFeed(result);
    });
  }

  Future<RssFeed?> loadFeed() async {
    try {
      final client = http.Client();
      final response = await client.get(Uri.parse(widget.url));
      return RssFeed.parse(response.body);
    } catch (e) {
      //
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    _refreshKey = GlobalKey<RefreshIndicatorState>();
    load();
  }

  isFeedEmpty() {
    return null == _feed?.items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isFeedEmpty()
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: RefreshIndicator(
                    key: _refreshKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 5,
                      ),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          crossAxisCount: 2,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height * 0.7),
                        ),
                        itemCount: _feed!.items!.length,
                        itemBuilder: (BuildContext context, int index) {
                          final item = _feed!.items![index];
                          return InkWell(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebviewScreen(
                                          urlTitle: widget.title,
                                          urlLink: item.link!,
                                        )),
                              );
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    item.media!.contents![0].url!,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    item.title!,
                                    maxLines: 3,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      backgroundColor: Colors.black26,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    onRefresh: () => load(),
                  ),
                ),
              ],
            ),
    );
  }
}
