import 'package:flutter/material.dart';
import "/recommendation.dart";
import "package:twitter_api_v2/twitter_api_v2.dart" as v2;
import '/ramen.dart';
import '/sushi.dart';
import 'curry.dart';
import '/setmeal.dart';

// var tweets_array = [];
List<String> tweets_array_ramen = <String>[];
List<String> tweets_array_sushi = <String>[];



class Gurume extends StatelessWidget {
  const Gurume(this.gurume0,this.gurume1,this.gurume2,this.gurume3,this.gurume4,{Key? key}) : super(key: key);
  final String gurume0;
  final String gurume1;
  final String gurume2;
  final String gurume3;
  final String gurume4;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfff9f9),
      appBar: AppBar(
        title: Text("県大グルメ"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Column(
              //   children: [
              //     Container(
              //       margin: const EdgeInsets.only(top: 5),
              //       child: Card(
              //         child: Column(
              //           children: const [
              //             ListTile(
              //               title: Text(
              //                 '説明',
              //                 textAlign: TextAlign.center,
              //                 style: TextStyle(
              //                     fontSize: 20,
              //                     fontWeight: FontWeight.w700,
              //                     color: Colors.black),
              //               ),
              //               subtitle: Text(
              //                 "説明文(あああああああああああああああああああああああああああああああああああああああああああ)",
              //                 style: TextStyle(
              //                     fontSize: 20,
              //                     // fontWeight: FontWeight.w700,
              //                     color: Colors.white),
              //               ),
              //             ),
              //           ],
              //         ),
              //         color: Colors.lightBlueAccent,
              //         // Card自体の色
              //         margin: const EdgeInsets.all(15),
              //         elevation: 2,
              //         // 影の離れ具合
              //         shadowColor: Colors.black,
              //         // 影の色
              //         shape: RoundedRectangleBorder(
              //           // 枠線を変更できる
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              const ListTile(
                title: Text(
                  '県大グルメの説明',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                subtitle: Text(
                  '"#県大グルメ"と投稿するとうんぬんかんぬん。',
                  style: TextStyle(
                      fontSize: 20,
                      // fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),

              Container(
                // alignment: Alignment.centerLeft,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 5,left:10),
                child: const Text(
                  '"#県大グルメ"と投稿するとうんぬんかんぬん。',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w700,),
                ),
              ),

              Column(
                children: <Widget>[
                  Container(
                    width: 300, //横幅
                    height: 100, //高さ
                    margin: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Text(
                            'ラーメン',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFFff7f7f), //色
                          width: 3.5, //太さ
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Colors.white,
                        onPrimary: const Color(0xFFff7f7f),
                        // elevation: 10,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Ramen(gurume0,gurume1,gurume2,gurume3,gurume4)),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 300, //横幅
                    height: 100, //高さ
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Text(
                            '寿司',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFFff7fff), //色
                          width: 3.5, //太さ
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Colors.white,
                        onPrimary: const Color(0xFFff7fff),
                        // elevation: 10,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sushi(tweets_array_sushi[0],tweets_array_sushi[1],tweets_array_sushi[2],tweets_array_sushi[3],tweets_array_sushi[4])),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 300, //横幅
                    height: 100, //高さ
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Text(
                            'カレー',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFFe5a323),
                          width: 3.5, //太さ
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Colors.white,
                        onPrimary: const Color(0xFFe5a323),
                        // elevation: 10,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Curry()),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 300, //横幅
                    height: 100, //高さ
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Text(
                            '定食',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFF32cd32),
                          width: 3.5, //太さ
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Colors.white,
                        onPrimary: const Color(0xFF32cd32),
                        // elevation: 10,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Setmeal()),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 300, //横幅
                    height: 100, //高さ
                    margin: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Text(
                            '最近のおすすめ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFFe9bc00),
                          width: 3.5, //太さ
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        primary: Colors.white,
                        onPrimary: const Color(0xFFe9bc00),
                        // elevation: 10,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Recommendation()),
                        );
                      },
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


