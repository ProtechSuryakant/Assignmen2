import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF6E6),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color(0xFFff385c),
                    )),
                const Spacer(),
                const Text(
                  "About",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFff385c),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Spacer()
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    '"Who We Are"',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text(
                    textAlign: TextAlign.justify,
                    '"Welcome to Dog Tinder, where possibilities are endless! 🐾 Our mission is to bring together the most adorable and lovable canines with humans seeking furry companionship. Whether you are a seasoned dog parent or a first-time puppy enthusiast, Dog Tinder is here to help you find your perfect match. Swipe through a variety of breeds, sizes, and personalities until you find that one special tail-wagger who steals your heart. Lets fetch some love and tail-wagging happiness together! 🐶❤️"',
                    style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.w200,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: TextButton(
                      child: const Text("www.DogsTinder.com"),
                      onPressed: () {}),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
