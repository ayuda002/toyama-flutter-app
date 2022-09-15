import 'package:flutter/material.dart';

class Sushi extends StatelessWidget {
  Sushi(this.Sushi0,this.Sushi1,this.Sushi2,this.Sushi3,this.Sushi4,{Key? key}) : super(key: key);
  final String Sushi0;
  final String Sushi1;
  final String Sushi2;
  final String Sushi3;
  final String Sushi4;

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
              Text(Sushi0),
              Text(Sushi1),
              Text(Sushi2),
              Text(Sushi3),
              Text(Sushi4),
            ],
          ),
        )
    );
  }
}