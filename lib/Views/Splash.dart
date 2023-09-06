import 'dart:async';

import 'package:assignment2/Views/Auth/Login.dart';
import 'package:assignment2/Views/onBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Get.off(const OnBoardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      statusBarIconBrightness: Brightness.dark, // Light icons on the status bar
    ));

    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: h,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFff99be),
                Color(0xFFff83a9),
                Color(0xFFff6d92),
                Color(0xFFff5478),
                Color(0xFFff385c),
              ],
            ),
          ),
        ),
        Positioned(
          top: h * .3,
          left: 20,
          right: 20,
          child: Container(
            height: 350,
            width: 320,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/png/dog_logo.png',
                  ),
                  fit: BoxFit.cover),
              // color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              // boxShadow: [
              //   BoxShadow(
              //       blurRadius: 10,
              //       spreadRadius: 2,
              //       color: Colors.grey.withOpacity(.5),
              //       offset: Offset(0, 2))
              // ]
            ),
          ),
        ),
        const Positioned(
          top: 100,
          left: 50,
          right: 50,
          child: Column(
            children: [
              Text(
                'Dogs Tinder',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '"Fetching Love Connections: Unleash Happiness on Dog Tinder!"',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
