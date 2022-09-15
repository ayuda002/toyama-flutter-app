import 'package:flutter/material.dart';

class Curry extends StatelessWidget {
  const Curry({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('県大グルメ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            Text("カレー"),
          ],
        ),
      ),
    );
  }
}


