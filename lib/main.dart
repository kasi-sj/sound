import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    sound(int no) {
      final player = AudioPlayer();
      player.setSource(AssetSource('note$no.wav'));
      player.resume();
    }

    Expanded box1(Color color, int no) {
      return Expanded(
          child: TextButton(
              onPressed: () {
                sound(no);
              },
              style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
              child: Container(
                color: color,
              )));
    }

    return MaterialApp(
      home: SafeArea(
        child: Column(
          children: [
            box1(const Color.fromARGB(255, 243, 6, 29), 1),
            box1(const Color.fromARGB(255, 255, 245, 205), 2),
            box1(const Color.fromARGB(255, 5, 254, 42), 3),
            box1(const Color.fromARGB(255, 5, 243, 215), 4),
            box1(const Color.fromARGB(255, 4, 41, 245), 5),
            box1(const Color.fromARGB(255, 245, 5, 229), 6),
            box1(const Color.fromARGB(255, 242, 4, 99), 7),
          ],
        ),
      ),
    );
  }
}
