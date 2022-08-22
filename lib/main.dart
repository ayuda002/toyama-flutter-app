import 'package:flutter/material.dart';
import 'profile.dart';
import 'top.dart';
import 'app.dart';

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
      theme: ThemeData(),
      home: const MyHomePage(title: 'POLYGON'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

  var _pages = <Widget>[
    Top(),
    App(),
    Container(
      child: Text('Coming Soon'),
      alignment: Alignment.center,
      color: Colors.pink.withOpacity(0.5),
    ),
    Profile()
  ];

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
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Text(widget.title,
        //       style: TextStyle(
        //           color: Colors.lightBlue, fontWeight: FontWeight.w700)),
        //   centerTitle: true,
        //   leading: const Icon(Icons.menu, color: Colors.lightBlue),
        //   actions: const [
        //     Icon(Icons.add, color: Colors.lightBlue),
        //     Icon(Icons.done, color: Colors.lightBlue),
        //   ],
        // ),
        body: _pages[_selectedIndex],
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
