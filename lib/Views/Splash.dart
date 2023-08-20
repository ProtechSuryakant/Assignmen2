import 'dart:async';

import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Views/Auth/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.off(const Login());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          LottieBuilder.asset('assets/animations/dogs_lottie2.json'),
          const Text(
            'Dogs Tinder',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color(0xFF293265),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
