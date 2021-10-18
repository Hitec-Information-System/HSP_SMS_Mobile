import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeWebViewPage extends StatefulWidget {
  const HomeWebViewPage({Key? key}) : super(key: key);

  @override
  _HomeWebViewPageState createState() => _HomeWebViewPageState();
}

class _HomeWebViewPageState extends State<HomeWebViewPage> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: WebView(
              initialUrl: "https://flutter.dev",
            ),
          ),
        ),
      ),
    );
  }
}
