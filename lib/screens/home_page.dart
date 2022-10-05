import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rss_feed/screens/all%20page/all_page_code.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 17,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(105),
          child: Theme(
            data: ThemeData(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
            ),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.grey[900],
              title: Text(
                "Explore News Club",
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w900),
              ),
              centerTitle: true,
              bottom: TabBar(
                indicatorColor: Colors.white,
                labelPadding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                labelStyle: GoogleFonts.montserrat(fontWeight: FontWeight.w900),
                isScrollable: true,
                tabs: [
                  TabBarButton(
                    text: 'India',
                  ),
                  TabBarButton(
                    text: 'Latest News',
                  ),
                  TabBarButton(
                    text: 'Buzzz',
                  ),
                  TabBarButton(
                    text: 'World',
                  ),
                  TabBarButton(
                    text: 'Entertainment',
                  ),
                  TabBarButton(
                    text: 'Tech',
                  ),
                  TabBarButton(
                    text: 'Business',
                  ),
                  TabBarButton(
                    text: 'Movies',
                  ),
                  TabBarButton(
                    text: 'Sports',
                  ),
                  TabBarButton(
                    text: 'Market',
                  ),
                  TabBarButton(
                    text: 'Web Stories',
                  ),
                  TabBarButton(
                    text: 'Videos',
                  ),
                  TabBarButton(
                    text: 'Breaking News',
                  ),
                  TabBarButton(
                    text: 'Education',
                  ),
                  TabBarButton(
                    text: 'Lifestyle',
                  ),
                  TabBarButton(
                    text: 'Crypto Currency',
                  ),
                  TabBarButton(
                    text: 'RSS',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            India(),
            LatestNews(),
            Buzz(),
            World(),
            Entertainment(),
            Tech(),
            Business(),
            Movies(),
            Sports(),
            Market(),
            WebStories(),
            Videos(),
            BreakingNews(),
            Education(),
            Lifestyle(),
            CryptoCurrency(),
            RSS()
          ],
        ),
      ),
    );
  }
}

class TabBarButton extends StatelessWidget {
  String text;
  TabBarButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(
          8,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(3, 3),
            blurRadius: 8,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.grey.shade800,
            offset: Offset(-3, -3),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Tab(
          text: text,
        ),
      ),
    );
  }
}
