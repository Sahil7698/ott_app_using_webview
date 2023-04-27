import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ViewPage extends StatefulWidget {
  final String link;
  const ViewPage({Key? key, required this.link}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  late InAppWebViewController myPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WillPopScope(
          onWillPop: () async {
            if (await myPage.canGoBack()) {
              myPage.goBack();
              return false;
            } else {
              return true;
            }
          },
          child: InAppWebView(
            onWebViewCreated: (controller) async {
              myPage = controller;
            },
            initialUrlRequest: URLRequest(
              url: Uri.parse(widget.link),
            ),
          ),
        ),
      ),
    );
  }
}
