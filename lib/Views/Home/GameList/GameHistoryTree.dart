import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameHistoryTree extends StatefulWidget {
  @override
  State<GameHistoryTree> createState() => _GameHistoryTreeState();
}

class _GameHistoryTreeState extends State<GameHistoryTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6E6),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 130),
            child: Column(
              children: [
                buildTreeRow([
                  'assets/images/list_dog/dogs_1.png',
                ], 'Labrador Retriever'),
                buildTreeRow([
                  'assets/images/list_dog/dogs_1.png',
                  'assets/images/list_dog/dogs_2.png',
                ], 'German Shepherd'),
                buildTreeRow([
                  'assets/images/list_dog/dogs_1.png',
                  'assets/images/list_dog/dogs_2.png',
                  'assets/images/list_dog/dogs_3.png',
                  'assets/images/list_dog/dogs_4.png',
                ], 'Golden Retriever'),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            right: 50,
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Game History Tree',
                style: TextStyle(
                    color: Color(0xFFff385c),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
              top: 50,
              left: 10,
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFFff385c),
                  ))),
          Positioned(
              bottom: 250,
              left: 40,
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/dog_game_4.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  const Icon(
                    Icons.favorite,
                    size: 80,
                    color: Colors.red,
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                        image: const DecorationImage(
                            image:
                                AssetImage("assets/images/list_dog/dogs_1.png"),
                            fit: BoxFit.cover)),
                  )
                ],
              )),
          Positioned(
              bottom: 150,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible,
                  '"The Golden Retriever is a perfect companion for your dog."',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }

  Widget buildTreeRow(List<String> images, String name) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(images.length, (branchIndex) {
        return Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(images[branchIndex])),
          ),
        );
      }),
    );
  }
}
