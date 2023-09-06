import 'package:assignment2/Data/Dogs2.dart';

import 'package:assignment2/Views/Widgets/DogsCard2.dart';
import 'package:flutter/material.dart';

class DogsList2 extends StatefulWidget {
  @override
  _DogsList2State createState() => _DogsList2State();
}

class _DogsList2State extends State<DogsList2> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: dogsData2.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return DogsCard2(
            title: dogsData2[index].title,
            image: dogsData2[index].image,
            color: dogsData2[index].color,
          );
        });
  }
}
