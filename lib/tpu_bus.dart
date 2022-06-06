import 'bus/three_page.dart';
import 'bus/two_page.dart';
import 'package:flutter/material.dart';
import 'bus/four_page.dart';
import 'bus/one_page.dart';

class TpuBus extends StatefulWidget {
  const TpuBus({Key? key}) : super(key: key);
  @override
  State<TpuBus> createState() => _TpuBusState();
}

class _TpuBusState extends State<TpuBus> {
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
