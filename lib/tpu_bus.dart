import 'package:flutter/painting.dart';

import 'bus/three_page.dart';
import 'bus/two_page.dart';
import 'package:flutter/material.dart';
import 'bus/four_page.dart';
import 'bus/one_page.dart';

class TpuBus extends StatefulWidget {
  const TpuBus({Key? key}) : super(key: key);
  @override
  State<TpuBus> createState() => _TpuBusState();
}

class _TpuBusState extends State<TpuBus> {
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
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //color: Colors.lightBlueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15, left: 30),
                      child: const Icon(
                        Icons.sunny, // Icons.○○にアイコン毎のワードを入れる
                        color: Colors.red, // アイコンの色を設定できる
                        size: 80.0, // アイコンのサイズを設定できる
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50, right: 20),
                      child: const Icon(
                        //Icons.cloud, // Icons.○○にアイコン毎のワードを入れる
                        //color: Colors.white, // アイコンの色を設定できる
                        Icons.cloud_outlined, //雲の輪郭だけの場合
                        color: Colors.grey,
                        size: 50.0, // アイコンのサイズを設定できる
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30,right: 50),
                      child: const Icon(
                        //Icons.cloud, // Icons.○○にアイコン毎のワードを入れる
                        //color: Colors.white, // アイコンの色を設定できる
                        Icons.cloud_outlined, //雲の輪郭だけの場合
                        color: Colors.grey,
                        size: 55.0, // アイコンのサイズを設定できる
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //color: Colors.lightBlueAccent,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 5,right: 20),
                        child: const Icon(
                          //Icons.cloud, // Icons.○○にアイコン毎のワードを入れる
                          //color: Colors.white, // アイコンの色を設定できる
                          Icons.cloud_outlined, //雲の輪郭だけの場合
                          color: Colors.grey,
                          size: 55.0, // アイコンのサイズを設定できる
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top:20,right: 20),
                        child: const Icon(
                          //Icons.cloud, // Icons.○○にアイコン毎のワードを入れる
                          //color: Colors.white, // アイコンの色を設定できる
                          Icons.cloud_outlined, //雲の輪郭だけの場合
                          color: Colors.grey,
                          size: 45.0, // アイコンのサイズを設定できる
                        ),
                      ),
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset('images/tree_green.png'),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top:20),
                    child: const Icon(
                      Icons.directions_bus_filled_outlined, // Icons.○○にアイコン毎のワードを入れる
                      color: Colors.black, // アイコンの色を設定できる
                      size: 120.0, // アイコンのサイズを設定できる
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset('images/tree_green.png'),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 350,
                  height:40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        Color? color = Colors.lightBlue;
                        if (states.contains(MaterialState.pressed)) {
                          color = Color.lerp(color, Colors.black, 0.5);
                        }
                        return color;
                      }),
                    ),
                    child: const Text("①富山キャンパス→射水キャンパス",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700,)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OnePage()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 350,
                  height:40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        Color? color = Colors.lightBlue;
                        if (states.contains(MaterialState.pressed)) {
                          color = Color.lerp(color, Colors.black, 0.5);
                        }
                        return color;
                      }),
                    ),
                    child: const Text("②射水キャンパス→富山キャンパス",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TwoPage()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 350,
                  height:40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        Color? color = Colors.lightBlue;
                        if (states.contains(MaterialState.pressed)) {
                          color = Color.lerp(color, Colors.black, 0.5);
                        }
                        return color;
                      }),
                    ),
                    child: const Text("③小杉駅→射水キャンパス",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThreePage()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 350,
                  height:40,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                        Color? color = Colors.lightBlue;
                        if (states.contains(MaterialState.pressed)) {
                          color = Color.lerp(color, Colors.black, 0.5);
                        }
                        return color;
                      }),
                    ),
                    child: const Text("④射水キャンパス→小杉駅",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FourPage()),
                      );
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset('images/bus.png'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right:20,bottom: 20),
                    child: SizedBox(
                      width: 120,
                      height: 120,
                      child: Image.asset('images/tpu_icon.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
