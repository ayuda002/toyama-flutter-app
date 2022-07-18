import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('プロフィール',
            style: TextStyle(
                color: Colors.lightBlue, fontWeight: FontWeight.w700)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.lightBlue),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(bottom: 50),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://dnsk.jp/wp/wp-content/uploads/2018/05/blog_01.jpg"),
                  ),
                ),
              ),
              Text('足立雄大',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    decoration: TextDecoration.underline,
                  )),
              Text('2255003',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }
}
