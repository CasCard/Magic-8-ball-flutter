import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.indigoAccent,
        ),
        body: MagicBall(),
      )),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int number = 1;
  void changeBallFace() {
    setState(() {
      number = Random().nextInt(5) + 1;
      print('I got clicked $number');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: changeBallFace,
          child: Image.asset('images/ball$number.png')),
    );
  }


}
