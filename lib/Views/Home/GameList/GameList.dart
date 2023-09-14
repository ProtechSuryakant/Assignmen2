import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Data/Dogs2.dart';
import 'package:assignment2/Views/Home/GameList/GameHistoryTree.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class GameList extends StatefulWidget {
  const GameList({super.key});

  @override
  State<GameList> createState() => _GameListState();
}

class _GameListState extends State<GameList> {
//  DateTime currentDate = DateTime.now();
  String formattedDate = DateFormat('MMMM dd, yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color(0xFFFFF6E6),
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Game Played',
            style: TextStyle(
                color: Color(0xFFff385c),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: GridView.builder(
          reverse: true,
          shrinkWrap: true,
          itemCount: dogsData2.length,
          itemBuilder: (context, index) {
            return Container(
              height: h * .4,
              width: w * .2,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: dogsData2[index].color,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(dogsData2[index].image)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: const Offset(0, 1),
                    )
                  ]),
              child: GestureDetector(
                onTap: () {
                  Get.to(GameHistoryTree());
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "ID: ${index + 1}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        dogsData2[index].title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        formattedDate.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
        ));
  }
}
