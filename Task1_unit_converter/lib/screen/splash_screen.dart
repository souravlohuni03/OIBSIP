import 'dart:async';

import 'package:flutter/material.dart';
import 'package:unit_converter/screen/convert_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ConvertScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie_animation/converter.json',
              width: 100,
              height: 100,
            ),
            const Text(
              "Converter",
              style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      )),
    );
  }
}
