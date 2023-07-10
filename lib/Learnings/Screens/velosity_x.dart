import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

Color greentouch = Vx.hexToColor("#788154");

class M2 extends StatelessWidget {
  const M2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.hexToColor('#e8eddb'),
      body: SafeArea(
        child: Column(children: [
          const CalendarView().p24().h(context.percentHeight * 35),
          const MusicPlayer().p24(),
        ]),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Column(
        children: [
          VxCapsule(
            backgroundColor: Vx.hexToColor("#c4ecd4"),
            width: 120,
            height: 28,
            child: [
              const Icon(Icons.phone_android_rounded).scale50(),
              const Text("Phone Speaker").text.xs.make()
            ].hStack(),
          ).objectCenterRight(),
          Row(children: [
            VxBox()
                .square(90)
                .bgImage(const DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=800"),
                    fit: BoxFit.cover))
                .rounded
                .make(),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text("Song Name").text.semiBold.make(),
              const Text("arist name").text.sm.make()
            ]).pSymmetric(h: 16, v: 12)
          ]),
          Slider(
            value: 35,
            min: 0,
            max: 100,
            onChanged: (value) {},
            inactiveColor: Vx.black,
            activeColor: Vx.black,
          ),
          HStack([
            const Text("1:20").text.make(),
            const Spacer(),
            const Text("3.20").text.make()
          ]).px24(),
          const HStack([
            Icon(
              Icons.shuffle,
              size: 24,
            ),
            Spacer(),
            Icon(
              Icons.skip_previous,
              size: 24,
            ),
            Spacer(),
            Icon(
              Icons.play_arrow,
              size: 24,
            ),
            Spacer(),
            Icon(
              Icons.skip_next,
              size: 24,
            ),
            Spacer(),
            Icon(
              Icons.favorite,
              size: 24,
            ),
            Spacer(),
          ])
        ],
      ),
    );
  }
}

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedBox(
      child: Row(
        children: [
          VStack(
            [
              const Text('May').text.xl4.thin.tighter.make(),
              const Text('24')
                  .text
                  .xl6
                  .thin
                  .tighter
                  .bold
                  .color(Vx.hexToColor('#595236'))
                  .fontFamily(GoogleFonts.poppins().fontFamily!)
                  .make(),
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          const Spacer(),
          VStack(
            [
              VxCapsule(
                height: 30,
                width: context.percentWidth * 50,
                backgroundColor: greentouch,
                child: const Text("Google I/O 23")
                    .text
                    .white
                    .make()
                    .px12()
                    .objectCenterLeft(),
              ),
              const Spacer(),
              VStack(
                [
                  const Text("Stand Up").text.semiBold.make(),
                  const Text("10:00-10:30 AM").text.make()
                ],
                axisSize: MainAxisSize.max,
              )
                  .box
                  .border(color: greentouch, width: 3)
                  .p16
                  .rounded
                  .width(context.percentWidth * 50)
                  .make(),
              const Spacer(),
              VxCapsule(
                  width: context.percentWidth * 50,
                  height: 30,
                  backgroundColor: Vx.yellow200,
                  child: const Text("Happy Hour")
                      .text
                      .make()
                      .px12()
                      .objectCenterLeft())
            ],
          ),
        ],
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RoundedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: greentouch,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            const GreenIcon(icon: Icons.mic),
            const GreenIcon(
              icon: Icons.bookmark_outline,
            ),
            const GreenIcon(icon: Icons.calendar_today),
            const GreenIcon(icon: Icons.brush),
          ],
        ),
      ).p24(),
    );
  }
}

class GreenIcon extends StatelessWidget {
  const GreenIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: greentouch,
    );
  }
}

class RoundedBox extends StatelessWidget {
  const RoundedBox({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return VxBox(child: child)
        .color(Vx.hexToColor('#fff6db'))
        .roundedLg
        .p12
        .make();
  }
}
