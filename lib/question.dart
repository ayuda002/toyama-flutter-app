import 'package:flutter/material.dart';

class Que extends StatefulWidget {
  const Que({Key? key}) : super(key: key);
  @override
  State<Que> createState() => _QueState();
}

class _QueState extends State<Que> {
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;
  bool isVisible5 = false;
  bool isVisible6 = false;
  bool isVisible7 = false;
  bool isVisible8 = false;

  @override
  Widget _qa(bool visible, String text, var content, change) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8, //横幅
          child: ElevatedButton.icon(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              primary: Colors.amber[700],
              onPrimary: Colors.white,
              alignment: Alignment.centerLeft,
              // elevation: 10,
            ),
            label: Text(
              text,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
            onPressed: () {
              setState(change);
            },
          ),
        ),
        Visibility(
          visible: visible, // デフォルトはfalseなので非表示になる
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8, //横幅
            child: Card(
              color: Colors.amber[100],
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Text(
                  content,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Q&A',
              style: TextStyle(
                  color: Colors.amber[900], fontWeight: FontWeight.w700)),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.amber[900]),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                ),
                Text(
                  'POLYGON',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                ),
                _qa(
                    isVisible1,
                    'POLYGONとは?',
                    '2022年3月に富山県立大学DX教育研究センターの完成を機に設立した学生団体です。\n活動を通じて専門的な知識や技術を身につけ、高度なデジタル技術をもつ人材の育成を目的としています。',
                    Visible1),
                _qa(
                    isVisible2,
                    'POLYGONの由来は？',
                    'POLYGONは「多角形」という意味をもつ英単語であり、多方面に技術を展開していきたいという願いが込められています。',
                    Visible2),
                _qa(
                    isVisible3,
                    'POLYGONは何してる？',
                    '・企業や行政、全学年の学生や他大学との連携\n・デジタル技術の獲得と社会実装\n・企業や行政との協働・共同研究への参画\n・DXセンターの運営など',
                    Visible3),
                _qa(
                    isVisible4,
                    'POLYGONに加入するには？',
                    'POLYGONは通年、学年・学科・能力問わずメンバーを募集しています。\n加入希望もしくは見学希望の方はWebサイトのContactからご連絡ください。',
                    Visible4),
                _qa(
                    isVisible5,
                    'POLYGONのメンバー数は？',
                    '現在のメンバー数は24人です。\n学科構成は、M2が2人、M1が1人、B4が3人、B3が4人、B2が4人、B1が3人です。\n男女比は4対1です。',
                    Visible5),
                Container(
                  margin: const EdgeInsets.all(5),
                ),
                Text(
                  'DX教育研究センター',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.amber[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                ),
                _qa(isVisible6, 'DX教育研究センターとは',
                    'DX人材の育成と県内企業のDX化の推進を目的に、2022年4月に開設された施設', Visible6),
                _qa(
                    isVisible7,
                    '誰でも自由に入っていいの？',
                    'DX教育研究センターはDX教育研究センターに関わりがある教員の許可を得た生徒しか入室することはできません。一度中を見てみたいと思われましたらPOLYGONまでご連絡ください。',
                    Visible7),
                _qa(
                    isVisible8,
                    '駐車場は利用していいの？',
                    'DX教育研究センターの駐車場は企業の方のための駐車場となります。そのため、学生は駐車禁止となっています。',
                    Visible8),
              ],
            ),
          ),
        ));
  }

  void Visible1() {
    isVisible1 = !isVisible1;
  }

  void Visible2() {
    isVisible2 = !isVisible2;
  }

  void Visible3() {
    isVisible3 = !isVisible3;
  }

  void Visible4() {
    isVisible4 = !isVisible4;
  }

  void Visible5() {
    isVisible5 = !isVisible5;
  }

  void Visible6() {
    isVisible6 = !isVisible6;
  }

  void Visible7() {
    isVisible7 = !isVisible7;
  }

  void Visible8() {
    isVisible8 = !isVisible8;
  }
}
