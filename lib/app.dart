import 'package:flutter/material.dart';

import 'gurume.dart';

class App extends StatefulWidget {
  const App(this.App0,this.App1,this.App2,this.App3,this.App4,{Key? key}) : super(key: key);
  @override
  final String App0;
  final String App1;
  final String App2;
  final String App3;
  final String App4;
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  //buttonコンポーネント
  Widget _button(icon, color, text) {
    return Container(
      width: 100, //横幅
      height: 100, //高さ
      child: ElevatedButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Icon(icon, color: Colors.white),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: Colors.red, //色
            width: 2, //太さ
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          primary: Colors.red,
          onPrimary: color,
          // elevation: 10,
        ),
        onPressed: () {},
      ),
    );
  }

  Widget _button2(icon, color, text, next) {
    return Container(
      width: 100, //横幅
      height: 100, //高さ
      child: ElevatedButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Icon(icon, color: Colors.white),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: Colors.red, //色
            width: 2, //太さ
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          primary: Colors.red,
          onPrimary: color,
          // elevation: 10,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => next),
          );
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('App',
            style: TextStyle(
                color: Colors.indigo[700], fontWeight: FontWeight.w700)),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button2(Icons.map_outlined, Colors.redAccent, "Gourmet", Gurume(widget.App0,widget.App1,widget.App2,widget.App3,widget.App4)),
                _button(Icons.map_outlined, Colors.redAccent, "Map"),
                _button(Icons.map_outlined, Colors.redAccent, "Map")
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
