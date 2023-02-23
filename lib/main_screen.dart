import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:promo/absentry_appcard.dart';
import 'package:promo/hi_im.dart';
import 'package:promo/styles.dart';
import 'package:simplified_flutter_animations/generic_fade_transition.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //List of all the apps screenshots to display. Just use Appcard(assetImage)
  List<Widget> appList = [
    const AppCard(assetImage: "Absentry.jpg"),
    const AppCard(assetImage: "cah_scoreboard.jpg"),
    const AppCard(assetImage: "picstate.jpg"),
    const AppCard(assetImage: "whatsapp_chat_dialer.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    //calculates vieportFraction, used for the carousel.
    final double viewportFraction =
        screenWidth < 1000 //if screenWidth is less than
            ? 0.5 //use viewportFraction
            : screenWidth < 1600 //else if if screenWidth is less than
                ? 0.3 //use viewportFraction
                : screenWidth < 2100 //else if if screenWidth is less than
                    ? 0.2 //use viewportFraction
                    : screenWidth < 3100 //else if if screenWidth is less than
                        ? 0.15 //use viewportFraction
                        : 0.1; //use viewportFraction

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        //Note to self, don't put a scaffold in a SingleChildScrollView

        child: Column(children: [
          GenericFadeTransition(
              duration: const Duration(
                milliseconds:
                    2500, // Animation length - slightly shorter as the rest to break up the website a bit.
              ),
              curve: Curves.fastOutSlowIn,
              builder: (context) {
                return const HiImMorne();
              }), //Text that displays... Hi, I'm Morne le Roux, a flutter dev.
          // Now with an animation!

          const SizedBox(height: 40), //spacing above the app cards

          GenericFadeTransition(
              duration: const Duration(
                milliseconds:
                    3500, // Animation length - slightly longer as the rest to break up the website a bit.
              ),
              curve: Curves.fastOutSlowIn,
              builder: (context) {
                return CarouselSlider(
                  //carousel. cuz every great website needs a carousel of annoying movement that keeps on distracting your eyes.
                  items: appList,
                  options: CarouselOptions(
                    height: 900,

                    viewportFraction:
                        viewportFraction, //gets calculated at build
                    enlargeCenterPage: true,
                    enlargeFactor: 0.15,
                    autoPlay: true,
                    autoPlayInterval: const Duration(milliseconds: 4000),
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
