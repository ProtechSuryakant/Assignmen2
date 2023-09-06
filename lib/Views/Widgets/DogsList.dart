import 'dart:convert';

import 'package:assignment2/Data/Dogs.dart';
import 'package:assignment2/Data/dummyData.dart';
import 'package:assignment2/Views/Widgets/DogsCard.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DogsList extends StatefulWidget {
  @override
  _DogsListState createState() => _DogsListState();
}

class _DogsListState extends State<DogsList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          dogsData.length,
          (index) {
            return DogsCard(
              image: dogsData[index].image,
              title: dogsData[index].title,
              // desc: dogsData[index].desc,
            );
          },
        ),
      ),
    );
  }
}
