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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //row for app showcase
            children: const [
              AppCard(),
              AppCard(),
              AppCard(),
            ],
          )
        ]),
      ),
    );
  }
}
