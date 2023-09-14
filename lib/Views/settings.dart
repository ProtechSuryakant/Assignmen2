import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
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
                  "Settings",
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
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            height: MediaQuery.of(context).size.height * .8,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: const Text(
                    "Appearance",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      child: const Icon(
                        Icons.star,
                        size: 30,
                        color: Colors.orange,
                      ),
                    ),
                    title: const Text(
                      "Theme",
                      style: TextStyle(fontSize: 16),
                    ),
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {
                        print("clicked");
                      },
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
