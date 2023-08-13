import 'package:assignment2/Views/Widgets/DogsCard.dart';
import 'package:flutter/material.dart';

class DogsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Container(
      height: h * 0.1,
      width: w,
      color: Colors.white,
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 10,
            ),
            DogsCard(
              image: 'assets/images/dog_1.jpg',
              title: 'Dog 1',
            ),
            SizedBox(
              width: 10,
            ),
            DogsCard(
              image: 'assets/images/dog_2.jpg',
              title: 'Dog 2',
            ),
            SizedBox(
              width: 10,
            ),
            DogsCard(
              image: 'assets/images/dog_3.jpg',
              title: 'Dog 3',
            ),
            SizedBox(
              width: 10,
            ),
            DogsCard(
              image: 'assets/images/dog_4.jpg',
              title: 'Dog 4',
            ),
            SizedBox(
              width: 10,
            ),
            DogsCard(
              image: 'assets/images/dog_5.jpg',
              title: 'Dog 5',
            ),
            SizedBox(
              width: 10,
            ),
            DogsCard(
              image: 'assets/images/dog_6.jpg',
              title: 'Dog 6',
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
