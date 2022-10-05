// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:google_fonts/google_fonts.dart';

class WebviewScreen extends StatefulWidget {
  String urlTitle;
  String urlLink;
  WebviewScreen({
    Key? key,
    required this.urlTitle,
    required this.urlLink,
  }) : super(key: key);
  @override
  State<WebviewScreen> createState() => _WebviewScreenState();
}

class _WebviewScreenState extends State<WebviewScreen> {
  late bool _isLoading;
  @override
  void initState() {
    super.initState();
    _isLoading = true;
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  double _progress = 0;
  late InAppWebViewController webView;

  @override
  Widget build(BuildContext context) {
    // var index;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          widget.urlTitle,
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: Colors.black),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      // backgroundColor: bgColor,
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(
            widget.urlLink,
          ),
        ),
        onWebViewCreated: (InAppWebViewController controller) {
          webView = controller;
        },
        onProgressChanged: (InAppWebViewController controller, int progress) {
          setState(() {
            _progress = progress / 100;
          });
        },
      ),
      // WebView(
      //     backgroundColor: Colors.white,
      //     javascriptMode: JavascriptMode.unrestricted,
      //     initialUrl: widget.urlLink,
      //   ),
    );
  }
}
