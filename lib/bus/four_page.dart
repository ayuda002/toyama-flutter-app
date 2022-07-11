import 'package:flutter/material.dart';

class FourPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("射水キャンパス発着運行ダイヤ",
            style: TextStyle(
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
                  "④射水キャンパス→小杉駅",
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
                      child: const Text("小杉駅着"),
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
                      height: 220.0,
                      margin: const EdgeInsets.all(10),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "7:53",
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
                              "8:08",
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
                              "8:28",
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
                          const Divider(
                            color: Colors.black,
                            thickness: 1.0,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "8:43",
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
                              "8:00",
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
                              "8:15",
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
                  ]),
                  TableRow(children: [
                    Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "3-4限",
                        style: TextStyle(fontSize: 15),
                      ),
                      height: 145.0,
                      margin: const EdgeInsets.all(10),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                              "9:50",
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
                              "10:10",
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
                              "10:38",
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
                              "9:57",
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
                              "10:17",
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
                              "12:53",
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
                              "13:00",
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
                              "14:33",
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
                              "14:40",
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
                            color: Colors.lightGreenAccent,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: const Text(
                              "15:25",
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
                              "16:23",
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
                              "13:34",
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
                              "16:30",
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
                        "課外活動",
                        style: TextStyle(fontSize: 15),
                      ),
                      height: 145.0,
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
                              "17:10",
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
                              "18:16",
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
                              "18:23",
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
                              "20:30",
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
                              "17:19",
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
                              "18:25",
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
                  ]),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  width: 1000.0,
                  child: Card(
                    child: Container(
                      color: Colors.yellow[100],
                      child: Column(children: <Widget>[
                        Text('黄色',style: TextStyle(color: Colors.yellow[900],fontSize: 20,fontWeight: FontWeight.w600),),
                        const Text('月曜・木曜(前期だけかも)・金曜のみ運行',style: TextStyle(fontSize: 18)),
                      ],)
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  width: 1000.0,
                  child: Card(
                    child: Container(
                      color: Colors.lightGreen[100],
                      child: Column(children: <Widget>[
                        Text('緑色',style: TextStyle(color: Colors.lightGreen[800],fontSize: 20,fontWeight: FontWeight.w600),),
                        const Text('射水市コミュニティバスのため最新の運行状況についてはHPを確認ください',style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
                      ],)
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 5),
                child: SizedBox(
                  width: 1000.0,
                  child: Card(
                    child: Container(
                      color: Colors.grey[100],
                      child: const Text("最新の運行状況はWebClassで確認してください",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
