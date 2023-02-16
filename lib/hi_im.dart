import 'package:flutter/material.dart';
import 'styles.dart';

//Main heading that says "Hi I'm Morné le Roux"

class HiImMorne extends StatelessWidget {
  const HiImMorne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).size.width *
        0.01; //calculates size of screen and gives a basic small double used for responsiveness.

    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 40, //space at the top of the screen
          ),
          Text(
            "Hi, I'm",
            style: kSecondaryHeadingTextStyle.copyWith(
                fontSize: textScale * 2 > 30
                    ? 30
                    : textScale *
                        2), //change the textScale multiplier on both sides for scale sizes. Change 30 for maximum text size.
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Morné le Roux",
            style: kMainHeadingTextStyle.copyWith(
                fontSize: textScale * 7 > 50
                    ? 50
                    : textScale *
                        7), //change the textScale multiplier on both sides for scale sizes. Change 50 for maximum text size.
          ),
          Text(
            "a flutter developer.",
            style: kSecondaryHeadingTextStyle.copyWith(
                fontSize: textScale * 3 > 30
                    ? 30
                    : textScale *
                        3), //change the textScale multiplier on both sides for scale sizes. Change 30 for maximum text size.
          )
        ],
      ),
    );
  }
}
