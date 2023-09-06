import 'package:assignment2/Constant/Colors.dart';
import 'package:flutter/material.dart';

class DogsCard extends StatelessWidget {
  final String image;
  final String title;

  const DogsCard({
    super.key,
    required this.image,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 210,
          width: MediaQuery.of(context).size.height * .20,
          margin: const EdgeInsets.all(10),
          // padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              gradient: const LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFFC9FFC9),
                  Color(0xFFADF0AC),
                  Color(0xFF90E18F),
                  Color(0xFF73D273),
                  Color(0xFF53C355),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 2,
                    spreadRadius: 1,
                    offset: const Offset(0, 1))
              ]),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black
                  ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
