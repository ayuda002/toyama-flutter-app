import 'package:flutter/material.dart';

class ThreePage extends StatelessWidget {
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
                  "③小杉駅→射水キャンパス",
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
                      child: const Text("小杉駅発"),
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
                      alignment: Alignment.center,
                      child: const Text(
                        "1-2限",
                        style: TextStyle(fontSize: 15),
                      ),
                      height: 300.0,
                      margin: const EdgeInsets.all(10),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "7:45",
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
                              "8:00",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.lightGreenAccent,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "8:09",
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
                              "8:20",
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
                              "8:35",
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
                              "8:36",
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
                              "8:40",
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
                            alignment: Alignment.center,
                            child: const Text(
                              "7:52",
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
                              "8:07",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.lightGreenAccent,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "8:14",
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
                              "8:27",
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
                              "8:42",
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
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "8:57",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "3-4限",
                        style: TextStyle(fontSize: 15),
                      ),
                      height: 300.0,
                      margin: const EdgeInsets.all(10),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.lightGreenAccent,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "9:14",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.lightGreenAccent,
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
                            alignment: Alignment.center,
                            child: const Text(
                              "9:40",
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
                              "10:00",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.lightGreenAccent,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "10:14",
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
                              "10:32",
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
                              "10:45",
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
                            color: Colors.lightGreenAccent,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "9:20",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.lightGreenAccent,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "9:36",
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
                              "9:47",
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
                              "10:07",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            color: Colors.lightGreenAccent,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "10:20",
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
                              "10:32",
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
                              "10:38",
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
                              "10:52",
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
                              "13:00",
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
                              "13:07",
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
                              "14:40",
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
                              "14:47",
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
                      margin: const EdgeInsets.all(10),
                      height: 20.0,
                      alignment: Alignment.center,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "16:30",
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
                              "16:37",
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
                            alignment: Alignment.center,
                            child: const Text(
                              "18:15",
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
                              "18:30",
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
                              "20:37",
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
                              "18:22",
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
                              "18:37",
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
                              "20:45",
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