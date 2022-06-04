import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class Circle extends StatelessWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget circleInfo = Column(
      children: const [
        Center(
          child: Text(
            "1.学生会 兼 大学祭実行委員会",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
        ),
        Image(image: AssetImage('images/001.png')),
      ],
    );

    Widget circleInfo_miss = Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "1.学生会 兼 大学祭実行委員会",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(image: AssetImage('images/001.png')),
            ],
          ),
        ),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
        'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'サークル紹介',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
          backgroundColor: const Color(0xFF2ca9e1),
        ),
        body: ListView(
          children: [
            // Image.asset(
            //   'images/lake.jpg',
            //   width: 600,
            //   height: 240,
            //   fit: BoxFit.cover,
            // ),
            const Center(
              child: Text(
                "1.学生会 兼 大学祭実行委員会",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            const Image(image: AssetImage('images/001.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Image(
                  image: AssetImage('images/twitter_icon.png'),
                  width: 35,
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('images/web_icon.png'),
                  width: 35,
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('images/instagram_icon.png'),
                  width: 35,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            const Divider(
              color: Colors.black,
              thickness: 1,
              height: 30,
              indent: 5,
              endIndent: 5,
            ),

            const Center(
              child: Text(
                "2.T. C. C. (Technical Computer Club)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            const Image(image: AssetImage('images/002.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Image(
                  image: AssetImage('images/twitter_icon.png'),
                  width: 35,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            const Divider(
              color: Colors.black,
              thickness: 1,
              height: 30,
              indent: 5,
              endIndent: 5,
            ),

            const Center(
              child: Text(
                "3.軽音楽部",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            const Image(image: AssetImage('images/003.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Image(
                  image: AssetImage('images/twitter_icon.png'),
                  width: 35,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            const Divider(
              color: Colors.black,
              thickness: 1,
              height: 30,
              indent: 5,
              endIndent: 5,
            ),

            const Center(
              child: Text(
                "4.バドミントン部",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            const Image(image: AssetImage('images/004.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Image(
                  image: AssetImage('images/twitter_icon.png'),
                  width: 35,
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('images/instagram_icon.png'),
                  width: 35,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            const Divider(
              color: Colors.black,
              thickness: 1,
              height: 30,
              indent: 5,
              endIndent: 5,
            ),

            const Center(
              child: Text(
                "5.バレーボール部",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            const Image(image: AssetImage('images/005.png')),

            const Divider(
              color: Colors.black,
              thickness: 1,
              height: 30,
              indent: 5,
              endIndent: 5,
            ),

            const Center(
              child: Text(
                "6.スキー部",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            const Image(image: AssetImage('images/006.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Image(
                  image: AssetImage('images/twitter_icon.png'),
                  width: 35,
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('images/instagram_icon.png'),
                  width: 35,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            const Divider(
              color: Colors.black,
              thickness: 1,
              height: 30,
              indent: 5,
              endIndent: 5,
            ),

            const Center(
              child: Text(
                "7.サッカー部",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            const Image(image: AssetImage('images/007.jpg')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Image(
                  image: AssetImage('images/twitter_icon.png'),
                  width: 35,
                  fit: BoxFit.cover,
                ),
                // Image(
                //   image: AssetImage('images/instagram_icon.png'),
                //   width: 35,
                //   fit: BoxFit.cover,
                // ),
              ],
            ),

            const Divider(
              color: Colors.black,
              thickness: 1,
              height: 30,
              indent: 5,
              endIndent: 5,
            ),

            titleSection,
            buttonSection,
            textSection,
            circleInfo,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
