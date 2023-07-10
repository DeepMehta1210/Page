import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:page/utils/colors.dart';
import 'package:page/utils/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: tWhiteColor,
          floating: true,
          pinned: true,
          centerTitle: true,
          expandedHeight: 300.0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(
              "Deep Mehta",
              style: GoogleFonts.ysabeau(
                color: tBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            background: Image.asset(
              "Assets/me.jpg",
              fit: BoxFit.cover,
            ),
            collapseMode: CollapseMode.parallax,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildRowWithIcon(
                        Ionicons.phone_portrait_outline, "+917984416040"),
                    const Divider(
                      color: tBlackColor,
                      thickness: 3,
                      indent: 40,
                    ),
                    buildRowWithIcon(
                        Ionicons.mail_outline, "Deep.mehta1206@gmail.com"),
                    const Divider(
                      color: tBlackColor,
                      thickness: 3,
                      indent: 40,
                    ),
                    buildRowWithIcon(
                        Ionicons.logo_github, "Deep.mehta1206@gmail.com"),
                    const Divider(
                      color: tBlackColor,
                      thickness: 3,
                      indent: 40,
                    ),
                    buildRowWithIcon(
                        Ionicons.logo_linkedin, "Deep.mehta1206@gmail.com"),
                    const Divider(
                      color: tBlackColor,
                      thickness: 3,
                      indent: 40,
                    ),
                    buildRowWithIcon(
                        Ionicons.location_outline, "Surat,Gujarat"),
                    const Divider(
                      color: tBlackColor,
                      thickness: 3,
                      indent: 40,
                    ),
                    Text(
                      "Summary",
                      style: GoogleFonts.ysabeau(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text.rich(
                        style: GoogleFonts.ysabeau(
                            fontSize: 20, fontWeight: FontWeight.w500),
                        const TextSpan(
                            text:
                                "Highly skilled Flutter developer with a passion for crafting innovative mobile applications.Proficient in creating seamless user experiences and visually appealing interfaces. Committed to delivering high-quality code and solving complex problems. Seeking challenging opportunities to leverage my expertise in Flutter development and contribute to cutting-edge mobile app projects.")),
                    Text(
                      "Education",
                      style: GoogleFonts.ysabeau(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Skills",
                      style: GoogleFonts.ysabeau(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Projects",
                      style: GoogleFonts.ysabeau(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Hobbies",
                      style: GoogleFonts.ysabeau(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
        )
      ],
    );
  }
}
