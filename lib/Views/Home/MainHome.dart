import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Views/Home/GameList/GameList.dart';
import 'package:assignment2/Views/Home/Home/Home.dart';
import 'package:assignment2/Views/Home/Profile/Profile.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  final Screens = [Home(), GameList(), Profile()];

  int index = 0;
  final items = <Widget>[
    const Icon(
      Icons.window,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.pages,
      size: 30,
      color: Colors.white,
    ),
    const Icon(
      Icons.person,
      size: 30,
      color: Colors.white,
    ),
  ];

  @override
  void initState() {
    super.initState();

    void showInfoDialog() {
      Get.defaultDialog(
        title: "Important",
        titleStyle: const TextStyle(
            fontSize: 22,
            color: Color(0xFFff385c),
            fontWeight: FontWeight.bold),
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              textAlign: TextAlign.center,
              '"To help us find the perfect soulmate for your dog, please make sure to complete your dogs profile by adding all the necessary details in the profile section. Providing comprehensive information about your dogs breed, age, temperament, and any specific preferences or requirements will greatly assist us in finding the ideal companion for your furry friend."',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          InkWell(
            onTap: () {
              Get.back();
              setState(() {
                index = 2;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFff83a9),
                    Color(0xFFff6d92),
                    Color(0xFFff5478),
                    Color(0xFFff385c),
                  ],
                ),
              ),
              child: const Text('Add Dog Details',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
        ],
        middleText: "",
      );
    }

    Future.delayed(const Duration(seconds: 2), () {
      showInfoDialog();
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFFff99be),
    ));

    return Container(
      color: Colors.black,
      child: Scaffold(
        key: navigationKey,
        extendBody: false,
        body: Screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: primaryColor,
            labelTextStyle: MaterialStateProperty.all(const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white)),
          ),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  // Color(0xFFff99be),
                  // Color(0xFFff83a9),
                  Color(0xFFff6d92),
                  Color(0xFFff5478),
                  Color(0xFFff385c),
                ],
              ),
            ),
            child: NavigationBar(
                indicatorColor: Colors.white.withOpacity(0.4),
                height: 60,
                backgroundColor: Colors.transparent,
                selectedIndex: index,
                onDestinationSelected: (index) => setState(() {
                      this.index = index;
                    }),
                destinations: [
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: NavigationDestination(
                      selectedIcon: const Icon(
                        Icons.window,
                        color: Colors.white,
                      ),
                      icon: items[0],
                      label: 'Home',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: NavigationDestination(
                      selectedIcon: const Icon(
                        Icons.pages,
                        color: Colors.white,
                      ),
                      icon: items[1],
                      label: 'Game Played',
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 5),
                      child: NavigationDestination(
                        selectedIcon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        icon: items[2],
                        label: 'Profile',
                      )),
                ]),
          ),
        ),
      ),
    );
  }
}
