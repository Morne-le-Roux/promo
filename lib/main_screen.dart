import 'package:flutter/material.dart';
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
      backgroundColor: const Color.fromARGB(255, 228, 255, 237),
      body: Column(children: const [
        HiImMorne(),
      ]),
    );
  }
}
