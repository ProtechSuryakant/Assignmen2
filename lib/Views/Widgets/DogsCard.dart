import 'package:assignment2/Constant/Colors.dart';
import 'package:flutter/material.dart';

class DogsCard extends StatelessWidget {
  final String image;
  final String title;
  final String desc;
  const DogsCard(
      {super.key,
      required this.image,
      required this.title,
      required this.desc});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 210,
          width: MediaQuery.of(context).size.height * .20,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xFF5C6098),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: const Offset(0, 3))
              ]),
          child: Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.network(
                  image,
                  height: 120,
                  width: 120,
                  fit: BoxFit.contain,
                ),
              ),
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
              const SizedBox(
                height: 10,
              ),
              Text(
                desc,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14, color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
