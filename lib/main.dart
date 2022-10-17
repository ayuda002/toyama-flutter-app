import 'package:flutter/material.dart';
import 'profile.dart';
import 'top.dart';
import 'app.dart';
import "package:twitter_api_v2/twitter_api_v2.dart" as v2;

// var tweets_array = [];
List<String> tweets_array_ramen = <String>[];
List<String> tweets_array_sushi = <String>[];

void main() async{
  final twitter = v2.TwitterApi(
    bearerToken:
    'AAAAAAAAAAAAAAAAAAAAAD3kfAEAAAAAFNrRj0hxLHMqrswsUQE%2BJjU5Fr0%3DmplapyYmh30X87nIeqJXFiLYGs26j2thRD3Gphi0iHtTbjmm4x',
    oauthTokens: v2.OAuthTokens(
      consumerKey: 'QVTBczYqBnlFgbKgvGim3q7dK',
      consumerSecret: 'PtdtJaVRm0ppAargOFFwZNIJck1I8MftPjBaPOOBPm0THP6mOp',
      accessToken: '1519597618858397696-lhbS2fm0nAlI9aqDdlzcVOZ6fWn0Z0',
      accessTokenSecret: 'CEdTB9d8DJRx8AEw0Wkn5PARcRmHBUp0YJBIAfaJFeIos',
    ),
  );
  try {
    // ラーメンに関するツイート取得
    final me = await twitter.usersService.lookupMe();
    // 検索クエリにはハッシュタグも使用できます。
    final tweets = await twitter.tweetsService.searchRecent(
      query: '#県大グルメラーメン',
      maxResults: 10,
    );

    // tweets_array_ramenに5件のツイート文章を格納
    for (var i = 0; i < 5; i++) {
      // print(tweets.data[i].text);
      print(i);
      if(tweets != null) {
        tweets_array_ramen.add(tweets.data[i].text.toString());
        print(tweets_array_ramen[i]);
      }
    }

    // 寿司に関するツイート取得
    final me2 = await twitter.usersService.lookupMe();
    // 検索クエリにはハッシュタグも使用できます。
    final tweets2 = await twitter.tweetsService.searchRecent(
      query: '#県大グルメ寿司',
      maxResults: 10,
    );

    // tweets_array_sushiに5件のツイート文章を格納
    for (var i = 0; i < 5; i++) {
      // print(tweets.data[i].text);
      print(i);
      if(tweets2 != null){
      tweets_array_sushi.add(tweets2.data[i].text.toString());
      print(tweets_array_sushi[i]);
      }
    }

  } on v2.TwitterException catch (e) {
    // 例外オブジェクトには例外発生時のHTTPレスポンスが格納されています。
    print(e.response.headers);
  }
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
    // App(tweets_array_ramen[0],tweets_array_ramen[1],tweets_array_ramen[2],tweets_array_ramen[3],tweets_array_ramen[4]),
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
