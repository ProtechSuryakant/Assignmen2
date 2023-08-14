import 'package:assignment2/Data/GameSteps.dart';
import 'package:assignment2/Views/Home/GameList/GameList.dart';
import 'package:assignment2/Views/Home/Home/GamePage.dart';
import 'package:assignment2/Views/Widgets/DogsCard.dart';
import 'package:assignment2/Views/Widgets/DogsList.dart';
import 'package:assignment2/Views/Widgets/OurUser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 247, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.3,
              width: w,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/dogs_home_top.jpg'),
                  fit: BoxFit.cover,
                ),
                //
                color: Colors.white,
              ),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialogBox();
                      });
                },
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  height: 35,
                  width: w * 0.5,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFF293265)),
                  child: const Text(
                    'Play Game',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              height: h * 0.04,
              color: Colors.white,
              child: Text(
                'Popular Breeds',
                style: TextStyle(
                    fontSize: 18.h,
                    color: const Color(0xFF293265),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: h * 0.23, child: DogsList()),
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              height: h * 0.05,
              color: Colors.white,
              child: Text(
                'Top Users',
                style: TextStyle(
                    fontSize: 18.h,
                    color: const Color(0xFF293265),
                    fontWeight: FontWeight.bold),
              ),
            ),
            OurUser(),
          ],
        ),
      ),
    );
  }

  Widget SimpleDialogBox() {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 550,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                child: const Text(
                  'Game Info',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF293265),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: steps.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        steps[index].title,
                        overflow: TextOverflow.visible,
                        style: const TextStyle(
                            color: Color(0xFF293265),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        steps[index].steps,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    );
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GamePage()));
                  },
                  child: const Text(
                    'Start',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
