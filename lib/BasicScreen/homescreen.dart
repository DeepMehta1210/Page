import 'package:flutter/material.dart';
import 'package:page/BasicScreen/blog.dart';
import 'package:page/BasicScreen/profile.dart';
import '../../../utils/colors.dart';
import 'package:page/Learnings/Screens/screen_one.dart';
import 'package:page/Learnings/Screens/screen_two.dart';
import 'package:page/Learnings/Quiz/quizzler.dart';
import 'package:page/utils/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _oneTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List _screens = [
    Home(),
    Blogs(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: tBrownColor,
        iconSize: 25,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: _oneTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: "Read",
            activeIcon: Icon(Icons.book),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: "Profile",
            activeIcon: Icon(Icons.account_box),
          )
        ],
        currentIndex: _selectedIndex,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const ScreenCard(
        title: "Quizzler",
        description: "A quiz app",
        image: "Assets/me.jpg",
        screen: QuizApp(),
      ),
      const ScreenCard(
        title: "Log In Screen",
        description: "A Log In Screen app",
        image: "Assets/bunny.jpg",
        screen: ScreenOne(),
      ),
      const ScreenCard(
        title: "Place Order Screen",
        description: "A Place Order Screen app",
        image: "Assets/gal_gadot.jpg",
        screen: ScreenTwo(),
      ),
    ];
    return VxSwiper.builder(
      height: double.infinity,
      itemCount: screens.length,
      itemBuilder: (context, index) {
        return screens[index % screens.length];
      },
    );
  }
}
