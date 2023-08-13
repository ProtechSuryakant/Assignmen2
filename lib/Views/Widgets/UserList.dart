import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  final String image;

  UserList({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          color: Colors.amber,
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                spreadRadius: 2,
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 2))
          ]),
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(image),
      ),
    );
  }
}
