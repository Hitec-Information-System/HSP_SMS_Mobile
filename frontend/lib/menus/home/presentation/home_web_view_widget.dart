import 'dart:io';

import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeWebViewWidget extends StatefulWidget {
  const HomeWebViewWidget({Key? key}) : super(key: key);

  @override
  _HomeWebViewWidgetState createState() => _HomeWebViewWidgetState();
}

class _HomeWebViewWidgetState extends State<HomeWebViewWidget> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(LayoutConstants.paddingL),
        child: WebView(
          initialUrl: "http://ss.hitecis.co.kr:9100/m_rpt1.htm",
        ),
      ),
    );
  }
}
