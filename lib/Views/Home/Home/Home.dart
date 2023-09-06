import 'dart:async';

import 'package:assignment2/Data/GameSteps.dart';
import 'package:assignment2/Views/Home/Home/GamePage.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:assignment2/Views/Widgets/DogsList.dart';
import 'package:assignment2/Views/Widgets/DogsList2.dart';
import 'package:assignment2/Views/Widgets/NavBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  double _heartHeight = 70.0;
  double _heartWidget = 70.0;
  bool flag = true;

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (flag == true) {
            _heartHeight = 100.0;
            _heartWidget = 100.0;
            flag = false;
          } else {
            _heartHeight = 70.0;
            _heartWidget = 70.0;
            flag = true;
          }
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _scaffoldKey,
      drawer: const NavBar(),
      backgroundColor: const Color(0xFFFFF6E6),
      body: ListView(
        children: [
          SizedBox(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: InkWell(
                        child: const Icon(
                          Icons.menu,
                          color: Color(0xFFff385c),
                        ),
                        onTap: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                      ),
                    ),
                    const Text(
                      "Home",
                      style: TextStyle(
                          color: Color(0xFFff385c),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: InkWell(
                        child: const Badge(
                          label: Text("5"),
                          child: Icon(
                            Icons.notifications,
                            color: Color(0xFFff385c),
                          ),
                        ),
                        onTap: () {
                          Get.defaultDialog(
                              title: "Notifications",
                              middleText:
                                  "There are new dogs added for your dog matching.");
                        },
                      ),
                    ),
                  ])),
          Container(
            height: h * 0.25,
            width: w,
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/tinder_banner.jpg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 1,
                      blurStyle: BlurStyle.inner,
                      spreadRadius: 1,
                      offset: const Offset(0, 1))
                ]),
          ),
          const SizedBox(
            height: 10,
          ),
          DodLoveCard(),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text(
              'Popular Breeds',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          DogsList(),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialogBox();
                  });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 40,
              width: w,
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
              child: const Text('Find Here',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: const Text('Top Winner',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
          ),
          DogsList2(),
        ],
      ),
    );
  }

  Widget SimpleDialogBox() {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 550,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: const Text(
                  'Rules',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFff385c),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: steps.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        steps[index].title,
                        overflow: TextOverflow.visible,
                        style: const TextStyle(
                            color: Color(0xFF293265),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        steps[index].steps,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  Get.off(GamePage());
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 40,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFff6d92),
                        Color(0xFFff5478),
                        Color(0xFFff385c),
                      ],
                    ),
                  ),
                  child: const Text('Start',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget DodLoveCard() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("assets/images/bull1.jpg"),
                    fit: BoxFit.cover)),
          ),
          AnimatedContainer(
            duration: const Duration(seconds: 2),
            height: _heartHeight,
            width: _heartWidget,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/png/heart.png"),
                    fit: BoxFit.contain)),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("assets/images/bull2.webp"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
