import 'package:assignment2/Views/Auth/Login.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFFFF6E6),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Golden Retriever',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            accountEmail: const Text("goldenretriver@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/dogs_home_top.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFff385c),
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
          ListTile(
            leading: const Icon(
              color: Colors.black,
              Icons.home,
              size: 30,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => Get.off(const MainHome()),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              color: Colors.black,
              Icons.handshake,
              size: 30,
            ),
            title: const Text(
              'Services',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => Get.defaultDialog(
              title: "Lorem Ipsum",
              middleText: "About",
              onConfirm: () {
                Get.back();
              },
            ),
          ),
          ListTile(
            leading: const Icon(
              color: Colors.black,
              Icons.group,
              size: 30,
            ),
            title: const Text(
              'About',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => Get.defaultDialog(
              title: "Lorem Ipsum",
              middleText: "About",
              onConfirm: () {
                Get.back();
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              color: Colors.black,
              Icons.settings,
              size: 30,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => Get.defaultDialog(
              title: "Lorem Ipsum",
              middleText: "Settings",
              onConfirm: () {
                Get.back();
              },
            ),
          ),
          ListTile(
            leading: const Icon(
              color: Colors.black,
              Icons.description,
              size: 30,
            ),
            title: const Text(
              'Feedback',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => Get.defaultDialog(
              title: "Lorem Ipsum",
              middleText: "Feedback",
              onConfirm: () {
                Get.back();
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              color: Colors.black,
              Icons.share,
              size: 30,
            ),
            title: const Text(
              'Share',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => Get.defaultDialog(
              title: "Lorem Ipsum",
              middleText: "Share",
              onConfirm: () {
                Get.back();
              },
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              size: 30,
              color: Colors.black,
            ),
            title: const Text(
              'Log Out',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            onTap: () => Get.off(const Login()),
          )
        ],
      ),
    );
  }
}
