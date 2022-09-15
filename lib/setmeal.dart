import 'package:flutter/material.dart';

class Setmeal extends StatelessWidget {
  const Setmeal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('県大グルメ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            Text("定食"),
          ],
        ),
      ),
    );
  }
}


