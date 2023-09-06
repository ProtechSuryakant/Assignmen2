import 'package:flutter/material.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                image,
                height: 300,
              ),
              const Spacer(),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              Text(
                description,
                textAlign: TextAlign.center,
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
