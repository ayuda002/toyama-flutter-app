import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewInfo extends StatelessWidget {
  const NewInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DX教育研究センター新着情報',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
          ),
        ),
        backgroundColor: const Color(0xFF2ca9e1),
      ),
      body: const WebView(
        initialUrl: 'https://dxc.pu-toyama.ac.jp/index.php/category/newinfo/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
