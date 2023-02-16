import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 300,
        height: 645,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("Absentry.jpg")), //image to display in card
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                spreadRadius: 3,
                offset: Offset(2, 2),
                blurRadius: 7,
                color: Colors.black54)
          ],
        ),
      ),
    );
  }
}
