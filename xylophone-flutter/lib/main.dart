import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundNumber(int thisNumber) {
    final player = AudioCache();
    player.play('note$thisNumber.wav');
  }

  Expanded buildKey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          soundNumber(number);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, number: 1),
              buildKey(color: Colors.orange, number: 2),
              buildKey(color: Colors.yellow, number: 3),
              buildKey(color: Colors.green, number: 4),
              buildKey(color: Colors.blue, number: 5),
              buildKey(color: Colors.teal, number: 6),
              buildKey(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
