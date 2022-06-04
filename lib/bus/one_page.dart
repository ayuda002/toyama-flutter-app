import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("射水キャンパス発着運行ダイヤ"),
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
                  "①富山キャンパス→射水キャンパス",
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
                      child: const Text("富山キャンパス発"),
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                    ),
                    Container(
                      child: const Text("射水キャンパス着"),
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
                              "7:35",
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
                              "7:40",
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
                              "7:45",
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
                              "8:25",
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
                              "8:30",
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
                              "8:35",
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
                              "9:45",
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
                              "9:50",
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
                              "10:25",
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
                              "10:35",
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
                      height: 20.0,
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
                              "12:15",
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
                              "12:50",
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
                      margin: const EdgeInsets.all(10),
                      height: 20.0,
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
                              "13:55",
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
                              "14:30",
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
                              "15:35",
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
                              "15:40",
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
                              "16:15",
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
                              "16:20",
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
                              "17:20",
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
                              "17:30",
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
                              "19:45",
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
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "18:10",
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
                              "20:25",
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
