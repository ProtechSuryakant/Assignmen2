import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Views/Widgets/TinderCard.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      child: Text(
                        'Playing',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: secondaryColor),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      child: const Text(
                        'Select One Of These Two Dog',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 350,
                      height: 250,
                      child: Row(
                        children: [
                          SwipeableCardsSection(context: context, items: const [
                            TinderCard(color: Colors.black),
                          ]),
                          const SizedBox(
                            width: 20,
                          ),
                          SwipeableCardsSection(context: context, items: const [
                            TinderCard(color: Colors.red),
                          ]),
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
                                // color: Colors.cyan,
                                width: 150,
                                child: Text(
                                  "Labrador Retriever",
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.visible,
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                // color: Colors.cyan,
                                width: 150,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  "German Shepherd",
                                  overflow: TextOverflow.visible,
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
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
                                child: const Text(
                                  "The Labrador Retriever is a popular and well-known dog breed.",
                                  overflow: TextOverflow.visible,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 150,
                                child: const Text(
                                  "The German Shepherd is a highly regarded and versatile dog breed. ",
                                  overflow: TextOverflow.visible,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Color(0xFF293265),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            size: 50,
                            color: Colors.pink.shade500,
                          ),
                        )),
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            size: 50,
                            color: Colors.red,
                          ),
                        )),
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.gpp_good_outlined,
                            size: 50,
                            color: Colors.green.shade500,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}





        // Row(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 Container(
        //                   decoration: BoxDecoration(
        //                       boxShadow: [
        //                         BoxShadow(
        //                             blurRadius: 10,
        //                             color: Colors.grey.withOpacity(0.5),
        //                             spreadRadius: 5,
        //                             offset: Offset(0, 3))
        //                       ],
        //                       borderRadius: BorderRadius.circular(20),
        //                       image: const DecorationImage(
        //                           image: AssetImage(
        //                             'assets/images/dog_game_1.jpg',
        //                           ),
        //                           fit: BoxFit.cover)),
        //                   height: 250,
        //                   width: 150,
        //                 ),
        //                 const SizedBox(
        //                   width: 20,
        //                 ),
        //                 Container(
        //                   decoration: BoxDecoration(
        //                       boxShadow: [
        //                         BoxShadow(
        //                             blurRadius: 10,
        //                             color: Colors.grey.withOpacity(0.5),
        //                             spreadRadius: 5,
        //                             offset: const Offset(0, 3))
        //                       ],
        //                       borderRadius: BorderRadius.circular(20),
        //                       image: const DecorationImage(
        //                           image: AssetImage(
        //                             'assets/images/dog_game_2.jpg',
        //                           ),
        //                           fit: BoxFit.cover)),
        //                   height: 250,
        //                   width: 150,
        //                 ),
        //               ],
        //             ),
//   }
// }
