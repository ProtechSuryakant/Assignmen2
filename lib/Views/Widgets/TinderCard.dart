import 'package:flutter/material.dart';

class TinderCard extends StatefulWidget {
  final color;
  final String? desc;
  final String title;
  final String image;
  const TinderCard({
    super.key,
    required this.color,
    this.desc,
    required this.title,
    required this.image,
  });

  @override
  State<TinderCard> createState() => _TinderCardState();
}

class _TinderCardState extends State<TinderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.image), fit: BoxFit.cover),
          color: widget.color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                spreadRadius: 3,
                blurStyle: BlurStyle.normal,
                offset: const Offset(0, 0.5))
          ]),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Dog No. ${widget.title}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 5,
            ),
          ]),
    );
  }
}
