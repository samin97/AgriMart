import 'dart:async';
import 'dart:math' as math;
import 'package:agriculture_app/screens/splash_screen/splash_content.dart';
import 'package:flutter/material.dart';

import '../../components&widgets/login/center_widget.dart';
import '../authentication/test_designs/login_content.dart';
import '../home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (c) => const HomeScreen()));
    });
  }

  Widget topWidget(double screenWidth) {
    return Transform.rotate(
      angle: -35 * math.pi / 180,
      child: Container(
        width: 1.2 * screenWidth,
        height: 1.2 * screenWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            gradient: const LinearGradient(
                colors: [Color(0x007CBFCF), Color(0xB316BFC4)],
                begin: Alignment(-0.2, -0.8),
                end: Alignment.bottomCenter)),
      ),
    );
  }

  Widget bottomWidget(double screenWidth) {
    return Container(
      width: 1.5 * screenWidth,
      height: 1.5 * screenWidth,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              colors: [Color(0xDB4BE8CC), Color(0x005CDBCF)],
              begin: Alignment(0.6, -1.1),
              end: Alignment(0.7, 0.8))),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -160,
            left: -30,
            child: topWidget(screenSize.width),
          ),
          Positioned(
            bottom: -180,
            left: -40,
            child: bottomWidget(screenSize.width),
          ),
          const SplashContent(),
          CenterWidget(size: screenSize),
          const SplashContent(),
        ],
      ),
    );
  }
}




