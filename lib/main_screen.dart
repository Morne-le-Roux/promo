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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        //Note to self, don't put a scaffold in a SingleChildScrollView

        child: Column(children: [
          const HiImMorne(), //Text that displays... Hi, I'm Morne le Roux, a flutter dev.

          const SizedBox(height: 40), //spacing above the app cards

          Text(
            "I let my apps and code speak for themselves. Click on an app to see a preview and short description.",
            style: kSecondaryHeadingTextStyle.copyWith(
                color: Colors.white54, fontStyle: FontStyle.italic),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //row for app showcase
            children: const [
              //images for the apps made.
              //TODO: when clicked on will open up github page for the project / maybe design a seperate page for every project?
              AppCard(assetImage: "Absentry.jpg"),
              AppCard(assetImage: "cah_scoreboard.jpg"),
              AppCard(assetImage: "picstate.jpg"),
              AppCard(assetImage: "whatsapp_chat_dialer.jpg")
            ],
          )
        ]),
      ),
    );
  }
}
