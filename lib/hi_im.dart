import 'package:flutter/material.dart';
import 'styles.dart';

//Main heading that says "Hi I'm Morné le Roux"

class HiImMorne extends StatelessWidget {
  const HiImMorne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).size.width * 0.01;

    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Text(
            "Hi, I'm",
            style: kSecondaryHeadingTextStyle.copyWith(
                fontSize: textScale * 3 > 30 ? 30 : textScale * 3),
          ),
          Text(
            "Morné le Roux",
            style: kMainHeadingTextStyle.copyWith(
                fontSize: textScale * 7 > 50 ? 50 : textScale * 7),
          ),
        ],
      ),
    );
  }
}
