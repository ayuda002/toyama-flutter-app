import 'package:flutter/material.dart';
import 'circle_info.dart';
import 'tpu_bus.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      icon: Icon(Icons.notifications),
      label: '新入生',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'プロフィール',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
                          'Card SubTitle',
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
                        Container(
                          width: 100, //横幅
                          height: 100, //高さ
                          child: ElevatedButton(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.redAccent,
                                  ),
                                  child: Icon(Icons.map_outlined,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Map',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
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
                              onPrimary: Colors.redAccent,
                              // elevation: 10,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        //Busボタン
                        Container(
                          width: 100, //横幅
                          height: 100, //高さ
                          child: ElevatedButton(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.bus_alert_outlined),
                                Text(
                                  'Bus',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.lightBlue, //色
                                width: 2, //太さ
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              primary: Colors.white,
                              onPrimary: Colors.lightBlue,
                              // elevation: 10,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TpuBus()),
                              );
                            },
                          ),
                        ),
                        //Q&A
                        Container(
                          width: 100, //横幅
                          height: 100, //高さ
                          child: ElevatedButton(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(Icons.question_answer_outlined),
                                Text(
                                  'Q&A',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                color: Color.fromARGB(255, 248, 173, 75), //色
                                width: 2, //太さ
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              primary: Colors.white,
                              onPrimary: Color.fromARGB(255, 248, 173, 75),
                              // elevation: 10,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Container(
                      // 内側の余白（パディング）
                      padding: EdgeInsets.all(4),
                      // 外側の余白（マージン）
                      margin: EdgeInsets.all(4),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9, //横幅
                      height: 50, //高さ
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.tag_faces,
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
                        label: const Text(
                          'サークル&学生団体 紹介',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Circle()),
                          );
                        },
                      ),
                    ),
                    Container(
                      // 内側の余白（パディング）
                      padding: EdgeInsets.all(4),
                      // 外側の余白（マージン）
                      margin: EdgeInsets.all(4),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9, //横幅
                      height: 50, //高さ
                      child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.sunny,
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
                        label: const Text(
                          'イベント紹介',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        onPressed: () {},
                      ),
                    ),

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
                              padding: EdgeInsets.all(10),
                            ),
                            onPressed: () {},
                            child: Icon(Icons.sunny, color: Colors.white),
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
                              padding: EdgeInsets.all(10),
                            ),
                            onPressed: () {},
                            child: Icon(Icons.sunny, color: Colors.white),
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
                              padding: EdgeInsets.all(10),
                            ),
                            onPressed: () {},
                            child: Icon(Icons.sunny, color: Colors.white),
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
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
