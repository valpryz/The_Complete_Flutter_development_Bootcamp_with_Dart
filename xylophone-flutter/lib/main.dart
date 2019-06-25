import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundNumber(int thisNumber) {
    final player = AudioCache();
    player.play('note$thisNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  color: Colors.red.shade600,
                  onPressed: () {
                    soundNumber(1);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.deepOrange.shade600,
                  onPressed: () {
                    soundNumber(2);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow.shade600,
                  onPressed: () {
                    soundNumber(3);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green.shade600,
                  onPressed: () {
                    soundNumber(4);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal.shade600,
                  onPressed: () {
                    soundNumber(5);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue.shade600,
                  onPressed: () {
                    soundNumber(6);
                  },
                  child: null,
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.deepPurpleAccent,
                  onPressed: () {
                    soundNumber(7);
                  },
                  child: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
