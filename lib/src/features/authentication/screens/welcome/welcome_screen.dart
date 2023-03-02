import 'package:flutter/material.dart';
import 'package:loginui/src/constants/colors.dart';
import 'package:loginui/src/constants/sizes.dart';
import 'package:loginui/src/constants/text_string.dart';
import 'package:loginui/src/features/authentication/screens/login/login_screen.dart';
import 'package:loginui/src/features/authentication/screens/signup/signup_screen.dart';

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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
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
