import 'package:assignment2/Views/Widgets/UserList.dart';
import 'package:flutter/material.dart';

class OurUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Container(
      height: h * 0.13,
      width: w,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 10,
            ),
            UserList(
              image: 'assets/images/user1.jpg',
            ),
            const SizedBox(
              width: 10,
            ),
            UserList(image: 'assets/images/user2.jpg'),
            const SizedBox(
              width: 10,
            ),
            UserList(
              image: 'assets/images/user3.jpg',
            ),
            const SizedBox(
              width: 10,
            ),
            UserList(
              image: 'assets/images/user4.jpg',
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
