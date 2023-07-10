import 'package:flutter/material.dart';
import 'dart:math';
class EightBallMagic extends StatefulWidget {
  const EightBallMagic({Key? key}) : super(key: key);

  @override
  State<EightBallMagic> createState() => _EightBallMagicState();
}

class _EightBallMagicState extends State<EightBallMagic> {
  int eightmagicnumber = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
            onPressed: () {
              setState(() {
                eightmagicnumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset("Images/ball$eightmagicnumber.png")),
      ),
    );
  }
}
