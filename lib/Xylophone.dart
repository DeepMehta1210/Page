
import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  // final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextButton(
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.red)),
              onPressed: () {
                // player.setSourceAsset("assets/note1.wav");
                // player.play;
              },
              child: const Text(""),
            ),
          ),
          Expanded(
            child: TextButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.orange)),
              onPressed: () {},
              child: const Text(""),
            ),
          ),
          Expanded(
            child: TextButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.yellow)),
              onPressed: () {},
              child: const Text(""),
            ),
          ),
          Expanded(
            child: TextButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.green)),
              onPressed: () {},
              child: const Text(""),
            ),
          ),
          Expanded(
            child: TextButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.teal)),
              onPressed: () {},
              child: const Text(""),
            ),
          ),
          Expanded(
            child: TextButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.blue)),
              onPressed: () {},
              child: const Text(""),
            ),
          ),
          Expanded(
            child: TextButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.purple)),
              onPressed: () {},
              child: const Text(""),
            ),
          ),
        ],
      ),
    );
  }
}
