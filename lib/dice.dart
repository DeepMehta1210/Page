import 'package:flutter/material.dart';
import 'dart:math';

class MyDice extends StatefulWidget {
  const MyDice({Key? key}) : super(key: key);

  @override
  State<MyDice> createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 2;
  void randomaize() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                randomaize();
              },
              child: Image.asset("Images/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                randomaize();
              },
              child: Image.asset("Images/dice$rightDiceNumber.png"),
            ),
          ),
        ],
      ),
    );
  }
}
