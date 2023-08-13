import 'package:assignment2/Constant/Colors.dart';
import 'package:flutter/material.dart';

class GameList extends StatefulWidget {
  const GameList({super.key});

  @override
  State<GameList> createState() => _GameListState();
}

class _GameListState extends State<GameList> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Game Played',
            style: TextStyle(
                color: Color(0xFF293265),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                child: ListTile(
                  title: Text(
                    'Game ${index + 1}',
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  trailing:
                      Icon(Icons.arrow_forward_ios, color: secondaryColor),
                ),
              );
            }));
  }
}
