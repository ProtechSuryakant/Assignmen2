import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Views/Home/GameList/GameList.dart';
import 'package:assignment2/Views/Home/Home/Home.dart';
import 'package:assignment2/Views/Home/Profile/Profile.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
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
          child: NavigationBar(
              indicatorColor: Colors.white,
              height: 60,
              backgroundColor: secondaryColor,
              selectedIndex: index,
              onDestinationSelected: (index) => setState(() {
                    this.index = index;
                  }),
              destinations: [
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: NavigationDestination(
                    selectedIcon: Icon(
                      Icons.window,
                      color: secondaryColor,
                    ),
                    icon: items[0],
                    label: 'Home',
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: NavigationDestination(
                    selectedIcon: Icon(
                      Icons.pages,
                      color: secondaryColor,
                    ),
                    icon: items[1],
                    label: 'Game Played',
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: NavigationDestination(
                        selectedIcon: Icon(
                          Icons.person,
                          color: secondaryColor,
                        ),
                        icon: items[2],
                        label: 'Profile')),
              ]),
        ),
      ),
    );
  }
}
