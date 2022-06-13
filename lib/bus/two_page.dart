import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("射水キャンパス発着運行ダイヤ",style: TextStyle(
            color: Colors.lightBlue, fontWeight: FontWeight.w700)),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.lightBlue),
    ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                child: const Text(
                  "②射水キャンパス→富山キャンパス",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Table(
                border: TableBorder.all(color: Colors.black),
                columnWidths: const <int, TableColumnWidth>{
                  0: IntrinsicColumnWidth(),
                  1: FlexColumnWidth(1.0),
                  2: FlexColumnWidth(1.0),
                },
                children: [
                  TableRow(children: [
                    Container(
                      child: const Text(""),
                      margin: const EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                    ),
                    Container(
                      child: const Text("射水キャンパス発"),
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                    ),
                    Container(
                      child: const Text("富山キャンパス着"),
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      child: const Text(
                        "1-2限",
                        style: TextStyle(fontSize: 15),
                      ),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
                      height: 65.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "8:45",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "8:50",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "9:30",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "9:40",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      child: const Text(
                        "3-4限",
                        style: TextStyle(fontSize: 15),
                      ),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
                      height: 65.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "10:40",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "10:55",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "11:15",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "11:30",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      child: const Text(
                        "5-6限",
                        style: TextStyle(fontSize: 15),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 30.0,
                      alignment: Alignment.center,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "なし",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "なし",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      child: const Text(
                        "7-8限",
                        style: TextStyle(fontSize: 15),
                      ),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
                      height: 65.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "13:10",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "14:50",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "13:50",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "15:25",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      child: const Text(
                        "9-10限",
                        style: TextStyle(fontSize: 15),
                      ),
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
                      height: 65.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "16:25",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "16:40",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "17:05",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "17:15",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      child: const Text(
                        "課外活動",
                        style: TextStyle(fontSize: 15),
                      ),
                      margin: const EdgeInsets.all(10),
                      height: 100.0,
                      alignment: Alignment.center,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "18:20",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "18:45",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "20:55",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.yellow,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "19:10",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "19:30",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "21:35",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: [
                    TextSpan(
                        text: "黄色",
                        style: TextStyle(backgroundColor: Colors.yellow)),
                    TextSpan(text: "は月曜・木曜(前期だけかも)・金曜のみ運行"),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(children: const <Widget>[
                  Text(
                    "最新の運行状況はWebClassで確認してください",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
