import 'package:flutter/material.dart';
import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Data/Dogs.dart';
import 'package:assignment2/Views/Widgets/TinderCard.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int currentDogIndex = 0;
  List<Dogs> currentDogs = [];

  void onCardSwap(Direction direction, int newIndex, TinderCard card) {
    setState(() {
      currentDogIndex = newIndex + 2;
      currentDogs = dogsData.sublist(currentDogIndex, currentDogIndex + 2);
    });
  }

  @override
  void initState() {
    super.initState();
    currentDogs = dogsData.sublist(0, 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Expanded(
            flex: 6,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(50)),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 2,
                          color: Colors.grey.withOpacity(0.5),
                          offset: const Offset(0, 2))
                    ]),
                    child: const Text(
                      'Playing',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF293265),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    height: 25,
                    child: const Text(
                      'Select One Of These Two Dog',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    height: 250,
                    child: Row(
                      children: [
                        SwipeableCardsSection(
                          onCardSwiped: (direction, newIndex, card) =>
                              onCardSwap(direction, newIndex, card),
                          context: context,
                          items: currentDogs
                              .sublist(currentDogIndex, currentDogIndex + 1)
                              .map((dog) => TinderCard(
                                    color: Colors.transparent,
                                    image: dog.image,
                                  ))
                              .toList(),
                        ),
                        const SizedBox(width: 20),
                        SwipeableCardsSection(
                          onCardSwiped: (direction, newIndex, card) =>
                              onCardSwap(direction, newIndex, card),
                          context: context,
                          items: currentDogs
                              .sublist(currentDogIndex + 1, currentDogIndex + 2)
                              .map((dog) => TinderCard(
                                    color: Colors.transparent,
                                    image: dog.image,
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              child: Text(
                                dogsData[currentDogIndex].title,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              child: Text(
                                dogsData[currentDogIndex + 1].title,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              child: Text(
                                dogsData[currentDogIndex].desc,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.visible,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 150,
                              child: Text(
                                dogsData[currentDogIndex + 1].desc,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.visible,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }
}
