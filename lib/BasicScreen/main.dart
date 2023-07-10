import 'package:flutter/material.dart';
import 'dart:async';
import 'package:page/BasicScreen/homescreen.dart';
import 'package:page/BasicScreen/onbording.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Page',
      home: Splesh(),
    );
  }
}

class Splesh extends StatefulWidget {
  const Splesh({super.key});

  @override
  State<Splesh> createState() => _SpleshState();
}

class _SpleshState extends State<Splesh> {
  bool hasOpenedBefore = false;
  @override
  void initState() {
    super.initState();
    checkFirstSeen();
  }

  Future<void> checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    hasOpenedBefore = (prefs.getBool('hasOpenedBefore') ?? false);
    if (hasOpenedBefore) {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      });
    } else {
      Timer(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Onbording()),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
        height: double.infinity,
        image: AssetImage("Assets/spgif.gif"),
        fit: BoxFit.cover,
      ),
    );
  }
}
