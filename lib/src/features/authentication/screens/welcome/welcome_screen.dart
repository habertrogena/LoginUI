import 'package:flutter/material.dart';
import 'package:loginui/src/constants/colors.dart';
import 'package:loginui/src/constants/image_string.dart';
import 'package:loginui/src/constants/sizes.dart';
import 'package:loginui/src/constants/text_string.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // const Image(
            //   image: AssetImage(tWelcomeScreenImage),
            // ),
            const Text(tWelcomeTitle),
            const Text(tWelcomeSubTitle),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      foregroundColor: tSecondaryColor,
                      side: const BorderSide(color: tSecondaryColor),
                      padding:
                          const EdgeInsets.symmetric(vertical: tButtonHeight),
                    ),
                    child: Text(
                      tLogin.toUpperCase(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(),
                      foregroundColor: tSecondaryColor,
                      side: const BorderSide(color: tSecondaryColor),
                      padding:
                          const EdgeInsets.symmetric(vertical: tButtonHeight),
                    ),
                    child: Text(tSignUp.toUpperCase()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
