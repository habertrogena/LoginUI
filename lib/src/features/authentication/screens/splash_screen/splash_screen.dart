// ignore: implementation_imports
import 'package:flutter/material.dart';
// ignore: implementation_imports

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image(
              image: AssetImage(assetName),
            ),
          )
        ],
      ),
    );
  }
}
