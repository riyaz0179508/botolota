import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebView extends StatefulWidget {
  const MyWebView({Key? key}) : super(key: key);

  @override
  _MyWebViewState createState() => _MyWebViewState();
}

class _MyWebViewState extends State<MyWebView> {

  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return 
      SafeArea(
        child: Scaffold(
        body: WebView(
          initialUrl: "https://botolota.com/?fbclid=IwAR2ziqZvzB-HhR_I_AZRnDqKTgNBkSf9lwaw7q966gTHj_xnpO3omW9YUC8",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },

        ),
    ),
      );
  }
}
