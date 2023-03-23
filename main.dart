import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    home: BallPage(),
  ),
);

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: const Center(
            child: Text('Ask me anything')
        ),
        backgroundColor: Colors.black87,
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  BallNumber createState() => BallNumber();
}

class BallNumber extends State<Ball> {
  int ballNumber = 1;

  void updateImage() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: updateImage,
        child: Image.asset(
          'images/ball$ballNumber.png',
        ),
      ),
    );
  }
}
