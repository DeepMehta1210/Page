import 'package:flutter/material.dart';
import 'package:page/BasicScreen/homescreen.dart';
import 'package:page/utils/colors.dart';
//TODO:how can i change that this screen shows only one time

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  final List<Widget> _pages = [
    const FirstScreen(),
    const SecondScreen(),
    const ThirdScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhiteColor,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: _pages,
          ),
          Positioned(
            bottom: 16.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    return List<Widget>.generate(_pages.length, (index) {
      return Container(
        width: 10.0,
        height: 10.0,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentPage == index ? tCoffeeColor : tLightGrayColor,
        ),
      );
    });
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Image.asset(
          "Assets/on1.png",
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("Assets/on2.png", fit: BoxFit.fill);
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        icon: const Icon(
          Icons.navigate_next_rounded,
          color: tBlackColor,
          size: 50,
        ),
        style: const ButtonStyle(
            iconSize: MaterialStatePropertyAll(30.0),
            backgroundColor: MaterialStatePropertyAll(tBrownColor)),
      ),
    );
  }
}
