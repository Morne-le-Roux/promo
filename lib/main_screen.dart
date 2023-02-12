import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 255, 237),
      body: Column(children: const [
        Center(
          child: Text("Morné le Roux"),
        ),
      ]),
    );
  }
}
