import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[300],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey[400],
          title: const Text('Ask Me Anything'),
        ),
        body: const MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBallNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(
                () {
                  magicBallNumber = Random().nextInt(5) + 1;
                },
              );
            },
            child: Image.asset(
              ('images/ball$magicBallNumber.png'),
            ),
          ),
        ),
      ]),
    );
  }
}
