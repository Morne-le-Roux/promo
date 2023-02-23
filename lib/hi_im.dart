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

                // this is the only way i could figure out how to resize the text depending on what screen size you have.
                // I still need to do more testing here. Maybe specifically on a phone and see what this looks like.

                // TODO: Test this on an actual phone.

                // It uses the above textScale variable determined from the width of the screen/window it's viewed on.
                // If the text size is more than 30, it sets the text size as 30, otherwise it uses the textScales value times a multiplier.
                // To adjust this, change the multiplier to change the general text size, and change the '30' for a maximum text size.
                // No minimum is implemented just yet, but further testing is required first to check if it's actually necessary.
                fontSize: textScale * 2 > 30 ? 30 : textScale * 2),
            //
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Morné le Roux",
            style: kMainHeadingTextStyle.copyWith(
                fontSize: textScale * 7 > 80
                    ? 80
                    : textScale * 7), // see how to adjust above
          ),
          Text(
            "a flutter developer.",
            style: kSecondaryHeadingTextStyle.copyWith(
                fontSize: textScale * 3 > 30
                    ? 30
                    : textScale * 3), // see how to adjust above
          ),

          const SizedBox(height: 40), // Spacing

          Text(
            "I let my apps and code speak for themselves. Click on an app to see a preview and short description.",
            textAlign: TextAlign.center,
            style: kSecondaryHeadingTextStyle.copyWith(
              color: Colors.white54,
              fontStyle: FontStyle.italic,
              fontSize: textScale * 3 > 20 ? 20 : textScale * 3, // see above
            ),
          ),
        ],
      ),
    );
  }
}
