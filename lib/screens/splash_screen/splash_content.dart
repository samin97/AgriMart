import 'package:flutter/material.dart';

import '../../global/constants.dart';

class SplashContent extends StatefulWidget {
  const SplashContent({Key? key}) : super(key: key);

  @override
  State<SplashContent> createState() => _SplashContentState();
}

class _SplashContentState extends State<SplashContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.contain,
                      height: 72,
                    ),
                    const Text(
                      appName,
                      style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontFamily: "Lobster",
                      ),
                    ),
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
