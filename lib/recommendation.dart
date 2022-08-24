import 'package:flutter/material.dart';

class Recommendation extends StatelessWidget {
  const Recommendation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('県大グルメ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            Text("最近のおすすめ"),
          ],
        ),
      ),
    );
  }
}