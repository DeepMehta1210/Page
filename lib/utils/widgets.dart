import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page/utils/colors.dart';

Widget buildRowWithIcon(IconData icon, String url) {
  return Row(
    children: [
      Icon(
        icon,
        size: 30,
      ),
      const SizedBox(
        width: 7,
      ),
      GestureDetector(
        onTap: () {}, //TODO:on click open app to call or open url
        child: Text(
          url,
          style: GoogleFonts.ysabeau(
            fontSize: 20,
            letterSpacing: 2,
          ),
        ),
      ),
    ],
  );
}

class ScreenCard extends StatelessWidget {
  const ScreenCard(
      {super.key,
      required this.title,
      required this.description,
      required this.image,
      required this.screen});
  final String title;
  final String description;
  final String image;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: tLightGrayColor,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Stack(
                fit: StackFit.passthrough,
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48.0,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.6),
                              offset: const Offset(1, 1),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        description,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.6),
                              offset: const Offset(1, 1),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BlogFront extends StatelessWidget {
  const BlogFront({
    super.key,
    required this.blogspage,
    required this.imagepath,
    required this.title,
  });
  final BlogPage blogspage;
  final String imagepath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return blogspage;
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 90,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  imagepath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Text(
                title,
                style: GoogleFonts.ysabeau(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BlogPage extends StatelessWidget {
  const BlogPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
