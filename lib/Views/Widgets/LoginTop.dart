import 'package:flutter/material.dart';

class LoginTop extends StatelessWidget {
  const LoginTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 100,
          child: ClipOval(
            child: Image.asset(
              'assets/images/dog_login.jpg',
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 250,
          height: 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color:
                    Colors.black.withOpacity(0.2), // Shadow color and opacity
                spreadRadius: 10,
                blurRadius: 20,
                offset: Offset(0, 1), // Shadow offset
              ),
            ],
          ),
        )
      ],
    );
  }
}
