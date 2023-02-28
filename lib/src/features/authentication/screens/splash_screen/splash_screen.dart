// ignore: implementation_imports
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:loginui/src/constants/colors.dart';
import 'package:loginui/src/constants/image_string.dart';
import 'package:loginui/src/constants/sizes.dart';
import 'package:loginui/src/constants/text_string.dart';
import 'package:loginui/src/features/authentication/screens/welcome/welcome_screen.dart';

// ignore: implementation_imports

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate =
      false; // using this variable we are going to animate our widget

  @override
  void initState() {
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: animate ? 0 : -30,
            left: animate ? 0 : -30,
            child: Image(
              image: AssetImage(tSplashTopIcon),
            ),
          ),
          Positioned(
            top: 20,
            left: tDefaultSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tAppName,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  tAppTagLine,
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            ),
          ),
          const Positioned(
            bottom: 100,
            child: Image(image: AssetImage(tSplashImage)),
          ),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          )
        ],
      ),
    ));
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));

    setState(() {
      animate = true;
    });

    await Future.delayed(Duration(milliseconds: 500));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
