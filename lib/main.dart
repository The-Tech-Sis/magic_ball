import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Ask Me Anything"),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 5;
  void callback(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [TextButton(
          onPressed: () {
            callback();
            print("I was Clicked $ballNumber times!");
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
        const SizedBox(
          height: 10,
        ),
        const Card(
          margin: EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 25.0,
          ),
          child: Text("Enter Your Request:"),
        ),
        const SizedBox(
          height: 10,
        ),
        //Container(
          //height: 100,
          //width: 380,
         // color: Colors.tealAccent,
       // )
        ]),
    );
  }
}