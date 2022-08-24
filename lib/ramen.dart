import 'package:flutter/material.dart';

class Ramen extends StatelessWidget {
  Ramen(this.ramen0,this.ramen1,this.ramen2,this.ramen3,this.ramen4,{Key? key}) : super(key: key);
  final String ramen0;
  final String ramen1;
  final String ramen2;
  final String ramen3;
  final String ramen4;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: const Color(0xFFfff9f9),
        appBar: AppBar(
          title: const Text('県大グルメ'),
        ),
        body: Container(
          // height: double.infinity,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(ramen0),
              Text(ramen1),
              Text(ramen2),
              Text(ramen3),
              Text(ramen4),
            ],
          ),
        )
    );
  }
}


