import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';

class Tinder extends StatefulWidget {
  const Tinder({super.key});

  @override
  State<Tinder> createState() => _TinderState();
}

class _TinderState extends State<Tinder> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: ((context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.transparent,
                floating: true,
                pinned: true,
                flexibleSpace: Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(top: 35, left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              print("Menu");
                            },
                            icon: Icon(
                              Icons.menu,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              print("notify");
                            },
                            icon: Icon(
                              Icons.notifications,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("cart");
                            },
                            icon: Icon(
                              Icons.shopping_bag,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                bottom: PreferredSize(
                    preferredSize: Size(w, h * 0.070),
                    child: Container(
                      height: h * 0.070,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                left: 5, right: 5, top: 5),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                  hintText: "Search Here......",
                                  border: InputBorder.none),
                            ),
                          )
                        ],
                      ),
                    )),
              )
            ];
          }),
          body: Center()),
    );
  }
}
