import 'package:flutter/material.dart';
import 'package:page/utils/colors.dart';
import 'package:page/utils/widgets.dart';

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Column(
          children: [
            BlogFront(
              blogspage: BlogPage(title: "This Is MY first blog"),
              title: "This Is MY first blog",
              imagepath: "Assets/me.jpg",
            ),
            Divider(
              color: tBlackColor,
              height: 2,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Divider(
              color: tBlackColor,
              height: 2,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Divider(
              color: tBlackColor,
              height: 2,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            Divider(
              color: tBlackColor,
              height: 2,
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
          ],
        ),
      ),
    );
  }
}
