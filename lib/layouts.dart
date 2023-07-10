import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  const Layouts({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text("button"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("long button"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("a bit more button"),
        ),
      ]),
    );
  }
}
