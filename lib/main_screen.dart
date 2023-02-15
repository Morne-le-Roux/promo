import 'package:flutter/material.dart';
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
      body: Column(children: const [
        HiImMorne(),
      ]),
    );
  }
}
