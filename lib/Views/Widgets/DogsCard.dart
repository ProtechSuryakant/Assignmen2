import 'package:flutter/material.dart';

class DogsCard extends StatelessWidget {
  final String image;
  final String title;
  const DogsCard({super.key, required this.image, required this.title});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 152,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    blurStyle: BlurStyle.outer,
                    spreadRadius: 5,
                    offset: Offset(0, 3))
              ]),
          child: Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  image,
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 16, color: Colors.black),
              )
            ],
          ),
        ),
      ],
    );
  }
}
