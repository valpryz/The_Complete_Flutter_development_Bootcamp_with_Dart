import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('I am poor'),
        backgroundColor: Colors.blueGrey[300],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/im_poor.jpg'),
        ),
      ),
    ),
  ));
}
