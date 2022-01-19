import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BoardWebViewPage extends ConsumerStatefulWidget {
  const BoardWebViewPage({
    Key? key,
    @PathParam("path") required this.path,
  }) : super(key: key);

  final String path;

  @override
  _BoardWebViewPageState createState() => _BoardWebViewPageState();
}

class _BoardWebViewPageState extends ConsumerState<BoardWebViewPage> {
  bool isLoading = true;
  final _key = UniqueKey();

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(
      userProvider.select(
        (user) => user,
      ),
    );

    final url = "${LogicConstants.webViewBaseUrl}/${widget.path}/${user?.key}";

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).textTheme.bodyText1?.color,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            WebView(
              key: _key,
              initialUrl: url,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (controller) {
                controller.clearCache();
                CookieManager().clearCookies();
              },
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
            if (isLoading)
              const Center(child: CircularProgressIndicator())
            else
              // to make this widget available to scroll
              Stack(),
          ],
        ),
      ),
    );
  }
}
