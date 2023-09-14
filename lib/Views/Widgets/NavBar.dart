import 'dart:developer';

import 'package:assignment2/Views/Auth/Login.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:assignment2/Views/about.dart';
import 'package:assignment2/Views/services.dart';
import 'package:assignment2/Views/settings.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

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
            onTap: () => Get.to(const ServicesPage()),
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
              onTap: () => Get.to(const About())),
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
              onTap: () => Get.to(const SettingsPage())),
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
              onTap: () => _showMyDialog(context)),
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
              onTap: () {
                Share.share("Share", subject: "www.Dogstinder.com");
              }),
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

  void _showMyDialog(BuildContext context) {
    TextEditingController _titleController = TextEditingController();
    TextEditingController _descController = TextEditingController();

    AwesomeDialog(
      context: context,
      dialogType: DialogType.noHeader,
      title: 'Share Your Experience',
      showCloseIcon: true,
      body: Container(
        height: 300,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Text(
              "Share your feedback",
              style: TextStyle(
                fontSize: 21,
                color: Color(0xFFff385c),
              ),
            ),
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                label: Text("Title"),
              ),
            ),
            TextFormField(
              controller: _descController,
              decoration: const InputDecoration(
                label: Text("Description"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                if (_titleController.text.isEmpty ||
                    _descController.text.isEmpty) {
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.info,
                          animType: AnimType.topSlide,
                          // showCloseIcon: true,
                          title: "Info",
                          titleTextStyle: const TextStyle(
                              color: Color(0xFF293265),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          desc: "Please fill all required fields.",
                          descTextStyle: const TextStyle(fontSize: 18),
                          btnOkOnPress: () {
                            Get.obs();
                          },
                          btnOkColor: Colors.pink)
                      .show();
                } else {
                  Get.back();
                  AwesomeDialog(
                          context: context,
                          dialogType: DialogType.success,
                          animType: AnimType.topSlide,
                          // showCloseIcon: true,
                          title: "Success",
                          titleTextStyle: const TextStyle(
                              color: Color(0xFF293265),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          descTextStyle: const TextStyle(fontSize: 18),
                          btnOkOnPress: () {
                            Get.obs();
                          },
                          btnOkColor: Colors.pink)
                      .show();
                }
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  gradient: const LinearGradient(
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
                child: const Text(
                  "Save",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    ).show();
  }
}
