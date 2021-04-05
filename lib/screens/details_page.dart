import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailsPage extends StatefulWidget {
  final String newsUrl;

  DetailsPage(this.newsUrl);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  WebViewController controller;
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Color(0xff311b92),
        elevation: 0,
      ),
      body:  Stack(
        children: [
          WebView(
                  initialUrl: widget.newsUrl,
                  onWebViewCreated: (controller) {
                    this.controller = controller;
                  },
                  onPageFinished: (url) {
                    controller.evaluateJavascript(
                        "var appBanners = document.getElementsByClassName('css-1pjuho0');"
                        "for (var i = 0; i < appBanners.length; i ++) {"
                        "appBanners[i].style.display = 'none';"
                        "}");
                    print("finished");
                    setState(() {
                      isLoading = false;
                    });
                  },
                  javascriptMode: JavascriptMode.unrestricted,
                ),
          isLoading? Container(
              color: Colors.white,
              child: Center(child: CircularProgressIndicator(),))
              :Container()
        ],
      ),
    );
  }
}
