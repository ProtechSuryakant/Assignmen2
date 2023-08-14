import 'package:assignment2/Views/Home/Profile/EditProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Color(0xFF293265),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: h * 0.1,
                width: w,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/cover.jpg',
                        ),
                        fit: BoxFit.cover)),
                child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        size: 15,
                        color: Color(0xFF293265),
                      ),
                    )),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: const EdgeInsets.only(top: 80),
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                height: h * 0.15,
                width: w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          textAlign: TextAlign.left,
                          "Suryakant Ajay",
                          style: TextStyle(
                              color: Color(0xFF293265),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: CircleAvatar(
                        radius: 15,
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EditProfile()));
                            },
                            icon: const Icon(
                              Icons.edit,
                              size: 15,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, left: 20),
                child: CircleAvatar(
                  radius: 53,
                  backgroundColor: Colors.white,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/profile_pic.jpeg',
                          fit: BoxFit.cover,
                          height: 100,
                          width: 100,
                        ),
                      ),
                      const Positioned(
                        right: 3,
                        bottom: 1,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFF293265),
                          radius: 15,
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 3),
            color: Colors.white,
            height: h * 0.57,
            width: w,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  width: w,
                  alignment: Alignment.centerLeft,
                  child: const Text('Mobile Number'),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(8.0),
                  width: w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 2,
                            blurStyle: BlurStyle.outer,
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(0, 2))
                      ]),
                  child: const Text(
                    '7869308919',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: w,
                  alignment: Alignment.centerLeft,
                  child: const Text('Email'),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(8.0),
                  width: w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 2,
                            blurStyle: BlurStyle.outer,
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(0, 2))
                      ]),
                  child: const Text(
                    overflow: TextOverflow.visible,
                    'Suryakant.programmics@gmail.com',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: w,
                  alignment: Alignment.centerLeft,
                  child: const Text('Gender'),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(8.0),
                  width: w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 2,
                            blurStyle: BlurStyle.outer,
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(0, 2))
                      ]),
                  child: const Text(
                    overflow: TextOverflow.visible,
                    'Male',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
