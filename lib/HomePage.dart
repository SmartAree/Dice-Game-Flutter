import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDiceNumber = 1 ;
  int rightDiceNumber = 1 ;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Dice Game', style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          letterSpacing: 1.5
        ),),
        backgroundColor: Colors.teal,
        elevation: 8.0,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  changeDiceFace();
                },
                  child: Image.asset('images/dice-$leftDiceNumber.png')),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: (){
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice-$rightDiceNumber.png')),
            ),
          ],
        ),
      ),
    );
  }
}
