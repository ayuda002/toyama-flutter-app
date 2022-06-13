import 'package:flutter/material.dart';
import 'circle_info.dart';
import 'tpu_bus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '富山県立大学(非公式)',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          // primarySwatch: Colors.,
          ),
      home: const MyHomePage(title: '富山県立大学'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
// テキストの装飾
  static const _bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'ホーム',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.apps),
      label: 'アプリ',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.assignment),
      label: 'アンケート',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_box),
      label: 'プロフィール',
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //button_iconコンポーネント
  Widget _button_icon(var icon, var color) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Icon(icon, color: Colors.white),
    );
  }

  //buttonコンポーネント
  Widget _button(icon, color, text, next) {
    return Container(
      width: 100, //横幅
      height: 100, //高さ
      child: ElevatedButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button_icon(icon, color),
            Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            color: Colors.white, //色
            width: 2, //太さ
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          primary: Colors.white,
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

  //
  Widget _intro(name, icon, next) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9, //横幅
      height: 50, //高さ
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          primary: Colors.lightBlue,
          onPrimary: Colors.white,
          alignment: Alignment.centerLeft,
          // elevation: 10,
        ),
        label: Text(
          name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 227, 247, 251),
            Color.fromARGB(255, 193, 235, 255),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.title,
              style: TextStyle(
                  color: Colors.lightBlue, fontWeight: FontWeight.w700)),
          centerTitle: true,
          leading: const Icon(Icons.menu, color: Colors.lightBlue),
          actions: const [
            Icon(Icons.add, color: Colors.lightBlue),
            Icon(Icons.done, color: Colors.lightBlue),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Image.asset('images/title_admissions.jpeg'),
                  // margin: const EdgeInsets.only(bottom: 20),
                ),
                Card(
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Icon(Icons.add),
                        title: Text('Pick UP'),
                        subtitle: Text(
                          "授業料免除申請",
                          style: TextStyle(
                              fontSize: 20,
                              // fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.lightBlueAccent, // Card自体の色
                  margin: const EdgeInsets.all(15),
                  elevation: 2, // 影の離れ具合
                  shadowColor: Colors.black, // 影の色
                  shape: RoundedRectangleBorder(
                    // 枠線を変更できる
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        //Mapボタン
                        _button(Icons.map_outlined, Colors.redAccent, "Map",
                            Test()),
                        //Busボタン
                        _button(Icons.bus_alert_outlined, Colors.lightBlue,
                            "Bus", TpuBus()),
                        //Q&A
                        _button(Icons.question_answer_outlined,
                            Color.fromARGB(255, 248, 173, 75), "Q&A", Test()),
                      ],
                    ),
                    Container(
                      // 内側の余白（パディング）
                      padding: EdgeInsets.all(4),
                      // 外側の余白（マージン）
                      margin: EdgeInsets.all(4),
                    ),
                    _intro('サークル&学生団体 紹介', Icons.whatshot, Circle()),
                    Container(
                      // 内側の余白（パディング）
                      padding: EdgeInsets.all(4),
                      // 外側の余白（マージン）
                      margin: EdgeInsets.all(4),
                    ),
                    _intro('イベント紹介', Icons.sunny, Circle()),
                    //SNSボタン
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          // width: 100, //横幅
                          // height: 100, //高さ
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(20),
                            ),
                            onPressed: () {},
                            child: Icon(FontAwesomeIcons.instagram),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          margin: EdgeInsets.all(4),

                          // width: 100, //横幅
                          // height: 100, //高さ
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(20),
                            ),
                            onPressed: () async {
                              const url = "http://polygon.pu-toyama.ac.jp/";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: Icon(FontAwesomeIcons.chrome),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          margin: EdgeInsets.all(4),

                          // width: 100, //横幅
                          // height: 100, //高さ
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(20),
                            ),
                            onPressed: () async {
                              const url = "https://twitter.com/st_DXcenter";
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: FaIcon(FontAwesomeIcons.twitter),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: _bottomNavItems,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
