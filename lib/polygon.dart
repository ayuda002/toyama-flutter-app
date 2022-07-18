import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Polygon extends StatelessWidget {
  const Polygon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("POLYGON"),
      ),
      body: const WebView(
        initialUrl: 'https://polygon.pu-toyama.ac.jp/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
