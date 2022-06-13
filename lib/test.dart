import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("富山県立大学マップ"),
      ),
      body: const WebView(
        initialUrl: 'https://www.pu-toyama.ac.jp/about/access/map/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
