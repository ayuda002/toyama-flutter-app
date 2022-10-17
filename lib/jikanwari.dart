import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Jikan extends StatelessWidget {
  const Jikan({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Map',
            style:
            TextStyle(color: Colors.red[600], fontWeight: FontWeight.w700)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.red[600]),
      ),
      body: const WebView(
        initialUrl: 'https://www.pu-toyama.ac.jp/about/access/map/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
