import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Checkout",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.amber,
              child: const Center(
                child: Column(
                  children: [
                    Text("Delivery carefully to your door"),
                    Text("it's completely free")
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.grey),
          ),
          Expanded(
            flex: 3,
            child: Container(color: Colors.white60),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
