import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatelessWidget {
  const MagicBall({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //const FirstPage({super.key});
  var ChangeImage = "assets/ball1.png";

  int a = 1;

  void change (){

    setState(() {
      int a = Random().nextInt(5)+1;
      ChangeImage = "assets/ball$a.png";
    });




  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magic Ball"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ChangeImage),
          ElevatedButton(onPressed: change, child: Text("Ask")),
        ],
      ),
    );
  }
}
