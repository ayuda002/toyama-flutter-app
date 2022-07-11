import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

    return Scaffold(
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
          Container(
            child: const Text(
              "1.学生会  大学祭実行委員会",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/001.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.instagram.com/gakuseikai/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(FontAwesomeIcons.instagram,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.pu-toyama.ac.jp/ST/top/new/index.html";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.chrome,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/TPU_gakuseikai";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "2.T. C. C. (Technical Computer Club)",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/002.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/tcc_tpu";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "3.軽音楽部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/003.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/TPUkeion_";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "4.バドミントン部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/004.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.instagram.com/tpu_badminton/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(FontAwesomeIcons.instagram,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/TPUbadminton";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "5.バレーボール部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/005.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "6.スキー部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/006.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.instagram.com/tpu_demoskiclub/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(FontAwesomeIcons.instagram,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/tpu_ptarmigan";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "7.サッカー部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/007.jpg')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.instagram.com/tpu.soccer/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(FontAwesomeIcons.instagram,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/tpu_soccer";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "8.バスケットボールサークル",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/008.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.instagram.com/tpu_basketball/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(FontAwesomeIcons.instagram,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "9.テニスサークル",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/009.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/TPU_tennis_club";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "10.軟式野球部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/010.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/toyamabt";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "11.アイスホッケー部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/011.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/TPU_icehockey";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "12.茶道部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/012.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "13.発明倶楽部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/013.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "14.天文部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/014.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/Tenmon_TPU";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "15.ひまわりサークル",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/015.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/Sonnenblume08";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "16.アカペラサークル",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/016.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.instagram.com/growing_acappella/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(FontAwesomeIcons.instagram,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://acappella-growing.jimdofree.com/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.chrome,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/acp_growing";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "17.Chat Box",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/017.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "18.水土里保全研究会",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/018.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/midorihozennken";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "19.剣道部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/019.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/kendaikend";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "20.ダンスサークル(dot.)",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/020.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.instagram.com/tpu.dance/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(FontAwesomeIcons.instagram,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/TPUdance";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "21.T.I.P",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/021.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "22.作曲・ダンスミュージックサークル Drop-ItemRecords",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/022.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.instagram.com/dirgram/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(FontAwesomeIcons.instagram,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/DropItemRecords";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "23.文芸サークル",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/023.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "24.PDC（プレゼン・ディベート・サークル）",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/024.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.instagram.com/pdc_of_everyday/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(FontAwesomeIcons.instagram,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://sites.google.com/view/tpu-online-event";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.chrome,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/PDC40853276";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "25.e-sports部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/025.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://www.instagram.com/tpuesports/";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(FontAwesomeIcons.instagram,size: 20),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/tpuesportsE3";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "26.空手道部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/026.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/TPU_karatedoubu";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "27.陸上競技部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/027.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/tpu_track_field";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "28.プラモデル制作部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          ),

          Container(
            child: const Image(image: AssetImage('images/028.png')),
            padding: const EdgeInsets.fromLTRB(28, 5, 28, 5),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    onPressed: () async {
                      const url = "https://twitter.com/TPU_Plamocircle";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: FaIcon(FontAwesomeIcons.twitter,size: 20),
                  ),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 10,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "29.TRPG.映画研究会",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 3),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "30.競技麻雀部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 3),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "31.フットサルサークル",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 3),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "32.スケートボードサークル",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 3),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "33.フィットネス部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 3),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "34.弓道部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 3),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),

          Container(
            child: const Text(
              "35.Q部",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 3),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

              ],
            ),
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          ),

          const Divider(
            color: Colors.black,
            thickness: 2,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),
        ],
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
