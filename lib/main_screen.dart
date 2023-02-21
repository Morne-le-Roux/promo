import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:promo/absentry_appcard.dart';
import 'package:promo/styles.dart';
import 'hi_im.dart';

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
          const HiImMorne(), //Text that displays... Hi, I'm Morne le Roux, a flutter dev.

          const SizedBox(height: 40), //spacing above the app cards

          Text(
            "I let my apps and code speak for themselves. Click on an app to see a preview and short description.",
            textAlign: TextAlign.center,
            style: kSecondaryHeadingTextStyle.copyWith(
              color: Colors.white54,
              fontStyle: FontStyle.italic,
              fontSize: 25,
            ),
          ),
          CarouselSlider(
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
          ),
        ]),
      ),
    );
  }
}
