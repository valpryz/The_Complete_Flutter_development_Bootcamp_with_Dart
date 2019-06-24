import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text(
            'Magic 8 Ball by Valpryz',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }
}
