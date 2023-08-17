import 'package:flutter/material.dart';

class TinderCard extends StatefulWidget {
  final color;
  final String image;
  const TinderCard({super.key, required this.color, required this.image});

  @override
  State<TinderCard> createState() => _TinderCardState();
}

class _TinderCardState extends State<TinderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(widget.image), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 5,
                blurStyle: BlurStyle.normal,
                offset: const Offset(0, 2))
          ]),
    );
  }
}
