import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Data/Dogs2.dart';
import 'package:flutter/material.dart';

class DogsCard2 extends StatelessWidget {
  final String image;
  final String title;
  final String? desc;
  final Color color;
  const DogsCard2(
      {super.key,
      required this.image,
      required this.title,
      this.desc,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(10),
          // padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: color,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
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
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black
                  ],
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
