import 'package:assignment2/Data/Dogs2.dart';
import 'package:flutter/material.dart';
import 'package:assignment2/Data/Dogs.dart';
import 'package:assignment2/Views/Widgets/TinderCard.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:get/get.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  List<Dogs2> currentDogs = [];

  List<Color> cardColors = [
    Colors.green,
    Colors.red,
    Colors.grey,
    Colors.blue,
    Colors.orange,
    Colors.pink,
    Colors.purple,
  ];

  final SwipeableCardSectionController _evenCardController =
      SwipeableCardSectionController();
  final SwipeableCardSectionController _oddCardController =
      SwipeableCardSectionController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFF6E6),
        body: SafeArea(
          top: true,
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back,
                          color: Color(0xFFff385c))),
                  const Spacer(),
                  const Text(
                    "Find Soulmate",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFff385c)),
                  ),
                  const Spacer()
                ],
              ),
            ),
            Container(
                height: 220,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/game1.jpg"),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black,
                            Colors.black
                          ])),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              "Name : ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Labrador",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              "Breed : ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Labrador Retriever",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Height : ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "2 ft",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                    title: "My Dogs Details",
                                    titleStyle: const TextStyle(
                                        color: Color(0xFFff385c)),
                                    middleText: "",
                                    middleTextStyle: TextStyle(fontSize: 1),
                                    actions: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                        ),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "Name : ",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "Labrador",
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Breed : ",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "Labrador Retriever",
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  "Height : ",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "2 ft",
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                )
                                              ],
                                            ),
                                            Row(children: [
                                              Text(
                                                "Hobby : ",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Playing Ball",
                                                style: TextStyle(fontSize: 16),
                                              )
                                            ]),
                                            Row(children: [
                                              Text(
                                                "Age : ",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "5 year",
                                                style: TextStyle(fontSize: 16),
                                              )
                                            ]),
                                            Row(children: [
                                              Text(
                                                "Food Choices : ",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "corn",
                                                style: TextStyle(fontSize: 16),
                                              )
                                            ]),
                                          ],
                                        ),
                                      )
                                    ],
                                  );
                                },
                                child: const Text(
                                  "More >>",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: SwipeableCardsSection(
                onCardSwiped: (direction, newIndex, card) {},
                context: context,
                items: dogsData2
                    .map((dog) => TinderCard(
                          color: dog.color,
                          image: dog.image,
                          title: dog.title,
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                    size: 100,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                    size: 100,
                  ),
                )
              ],
            )
          ]),
        ));
  }
}
