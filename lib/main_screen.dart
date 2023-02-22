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
                  items: appList,
                  //carousel. cuz every great website needs a carousel of annoying movement that keeps on distracting your eyes.
                  options: CarouselOptions(
                    height: 1000,

                    //TODO: this looks good for 1080p screens and portrait phone stuff. Need to work on the in between still
                    viewportFraction: screenWidth > 1500 ? 0.15 : 0.5,
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
