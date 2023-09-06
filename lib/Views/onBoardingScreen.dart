import 'package:assignment2/Views/Auth/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<Widget> pages = [
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(width: 2)
      ),
      child: Stack(
        children: [
          Positioned(
              top: 20,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/dog_2.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(0, 2))
                    ]),
                height: 150,
                width: 150,
              )),
          Positioned(
              right: 10,
              top: 125,
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/dog_3.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(0, 2))
                    ]),
                height: 150,
                width: 150,
              )),
          Positioned(
              top: 250,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/dog_6.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 5,
                          offset: const Offset(0, 2))
                    ]),
                height: 150,
                width: 150,
              )),
          const Positioned(
            bottom: 20,
            left: 5,
            right: 5,
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  '"Welcome to Dogs Tinder! 🐶"',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF293265)),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Swipe right to meet your furry friends",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const Stack(
        children: [
          Positioned(
              left: 10,
              top: 20,
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage("assets/images/d1.jpg"),
              )),
          Positioned(
              top: 180,
              right: 50,
              left: 50,
              child: Icon(
                Icons.favorite,
                size: 80,
                color: Colors.red,
              )),
          Positioned(
              right: 10,
              top: 230,
              child: CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage("assets/images/d2.jpg"),
              )),
          Positioned(
            bottom: 20,
            left: 5,
            right: 5,
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  '"Match with dogs you adore and start chatting with their owners."',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF293265)),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            child: Container(
              width: 245,
              height: 110,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/pd1.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: 120,
            right: 5,
            child: Container(
              width: 245,
              height: 110,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/pd2.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: 240,
            left: 5,
            child: Container(
              width: 245,
              height: 110,
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/pd3.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          const Positioned(
            bottom: 20,
            left: 5,
            right: 5,
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  '"Time to join the pack! Sign up or log in to get started."',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF293265)),
                ),
                Text(
                  textAlign: TextAlign.center,
                  '"Know habit for your Dogs! Sign up or log in to get started."',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFFFF6E6),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Get.off(const Login());
                  },
                  child: const Text('Skip',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                children: pages,
              ),
            ),
            Row(
              children: [
                ...List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: DotIndicator(
                            isActive: index == _pageIndex,
                          ),
                        )),
                const Spacer(),
                Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.symmetric(
                    vertical: 50,
                  ),
                  child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                        if (_pageIndex == 2) {
                          setState(() {
                            Get.to(const Login());
                          });
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: Color(0xFFff385c),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
          color: isActive
              ? const Color(0xFFff385c)
              : const Color(0xFFff385c).withOpacity(0.4),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      duration: const Duration(microseconds: 300),
    );
  }
}
