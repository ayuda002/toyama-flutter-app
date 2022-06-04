import 'bus/three_page.dart';
import 'bus/two_page.dart';
import 'package:flutter/material.dart';
import 'bus/four_page.dart';
import 'bus/one_page.dart';

class TpuBus extends StatelessWidget {
  const TpuBus({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("射水キャンパス発着運行ダイヤ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 260,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    Color? color = Colors.blue;
                    if (states.contains(MaterialState.pressed)) {
                      color = Color.lerp(color, Colors.black, 0.5);
                    }
                    return color;
                  }),
                ),
                child: const Text("①富山キャンパス→射水キャンパス"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnePage()),
                  );
                },
              ),
            ),
            SizedBox(
              width: 260,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    Color? color = Colors.blue;
                    if (states.contains(MaterialState.pressed)) {
                      color = Color.lerp(color, Colors.black, 0.5);
                    }
                    return color;
                  }),
                ),
                child: const Text("②射水キャンパス→富山キャンパス"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TwoPage()),
                  );
                },
              ),
            ),
            SizedBox(
              width: 260,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    Color? color = Colors.blue;
                    if (states.contains(MaterialState.pressed)) {
                      color = Color.lerp(color, Colors.black, 0.5);
                    }
                    return color;
                  }),
                ),
                child: const Text("③小杉駅→射水キャンパス"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThreePage()),
                  );
                },
              ),
            ),
            SizedBox(
              width: 260,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (Set<MaterialState> states) {
                    Color? color = Colors.blue;
                    if (states.contains(MaterialState.pressed)) {
                      color = Color.lerp(color, Colors.black, 0.5);
                    }
                    return color;
                  }),
                ),
                child: const Text("④射水キャンパス→小杉駅"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FourPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
