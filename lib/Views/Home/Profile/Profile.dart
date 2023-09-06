import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

enum Gender { male, female, other }

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Gender? _selectedGender;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nameBreed = TextEditingController();
  final TextEditingController _colorController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _decesesController = TextEditingController();
  final TextEditingController _foodController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _hobbyController = TextEditingController();

  bool isEnabled = true;
  File? _image;
  File? _coverImage;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      return setState(() {
        _image = File(image!.path);
      });
    }
  }

  Future getCoverImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image != null) {
      return setState(() {
        _coverImage = File(image!.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF6E6),
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                child: SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Text(
                      "Profile",
                      style: TextStyle(
                          color: Color(0xFFff385c),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, left: 120),
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  child: Stack(
                    children: [
                      ClipOval(
                        child: _image == null
                            ? Image.asset(
                                'assets/images/dogs_home_top.jpg',
                                fit: BoxFit.cover,
                                height: 150,
                                width: 150,
                              )
                            : Image.file(
                                _image!,
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                      ),
                      Positioned(
                        right: 20,
                        bottom: 0,
                        child: InkWell(
                          onTap: () {
                            getImage();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(0xFF293265),
                                borderRadius: BorderRadius.circular(50)),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: w,
            padding: const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: w,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _nameController,
                      style: TextStyle(
                        color:
                            isEnabled ? const Color(0xFF293265) : Colors.grey,
                      ),
                      decoration: const InputDecoration(
                        label: Text("Dog Name"),
                        labelStyle: TextStyle(color: Color(0xFF293265)),
                        hintText: 'Dog Name',
                        contentPadding: EdgeInsets.all(0),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: w,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _nameBreed,
                      decoration: const InputDecoration(
                        label: Text("Breed"),
                        labelStyle: TextStyle(color: Color(0xFF293265)),
                        hintText: 'Breed',
                        contentPadding: EdgeInsets.all(0),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: w,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _colorController,
                      decoration: const InputDecoration(
                        label: Text("Color"),
                        labelStyle: TextStyle(color: Color(0xFF293265)),
                        hintText: 'Color',
                        contentPadding: EdgeInsets.all(0),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: w,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _ageController,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: const InputDecoration(
                        label: Text("Age"),
                        labelStyle: TextStyle(color: Color(0xFF293265)),
                        hintText: 'Age',
                        contentPadding: EdgeInsets.all(0),
                      ),
                    )),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text('Gender'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<Gender>(
                          value: Gender.male,
                          groupValue: _selectedGender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                        ),
                        const Text('Male'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<Gender>(
                          value: Gender.female,
                          groupValue: _selectedGender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                        ),
                        const Text('Female'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<Gender>(
                          value: Gender.other,
                          groupValue: _selectedGender,
                          onChanged: (Gender? value) {
                            setState(() {
                              _selectedGender = value;
                            });
                          },
                        ),
                        const Text('Other'),
                      ],
                    ),
                  ],
                )),
                const Divider(
                  thickness: 3,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: w,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _decesesController,
                      decoration: const InputDecoration(
                        label: Text("Deceases"),
                        labelStyle: TextStyle(color: Color(0xFF293265)),
                        hintText: 'Any Deceases',
                        contentPadding: EdgeInsets.all(0),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: w,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _foodController,
                      decoration: const InputDecoration(
                        label: Text("Food"),
                        labelStyle: TextStyle(color: Color(0xFF293265)),
                        hintText: 'Food Choices',
                        contentPadding: EdgeInsets.all(0),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: w,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _heightController,
                      decoration: const InputDecoration(
                        label: Text("Height"),
                        labelStyle: TextStyle(color: Color(0xFF293265)),
                        hintText: 'Height',
                        contentPadding: EdgeInsets.all(0),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: w,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _weightController,
                      decoration: const InputDecoration(
                        label: Text("Weight"),
                        labelStyle: TextStyle(color: Color(0xFF293265)),
                        hintText: 'Weight',
                        contentPadding: EdgeInsets.all(0),
                      ),
                    )),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: w,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: _hobbyController,
                      decoration: const InputDecoration(
                        label: Text("Hobbies"),
                        labelStyle: TextStyle(color: Color(0xFF293265)),
                        hintText: 'Hobbies',
                        contentPadding: EdgeInsets.all(0),
                      ),
                    )),
                InkWell(
                  enableFeedback: isEnabled,
                  onTap: () {
                    if (_nameController.text.isEmpty ||
                        _nameBreed.text.isEmpty ||
                        _colorController.text.isEmpty ||
                        _ageController.text.isEmpty ||
                        _decesesController.text.isEmpty ||
                        _foodController.text.isEmpty ||
                        _heightController.text.isEmpty ||
                        _weightController.text.isEmpty ||
                        _hobbyController.text.isEmpty) {
                      AwesomeDialog(
                              context: context,
                              dialogType: DialogType.info,
                              animType: AnimType.topSlide,
                              // showCloseIcon: true,
                              title: "Info",
                              titleTextStyle: const TextStyle(
                                  color: Color(0xFF293265),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              desc: "Please fill all required fields.",
                              descTextStyle: const TextStyle(fontSize: 18),
                              btnOkOnPress: () {
                                Get.obs();
                              },
                              btnOkColor: Colors.pink)
                          .show();
                    } else {
                      AwesomeDialog(
                              context: context,
                              dialogType: DialogType.success,
                              animType: AnimType.topSlide,
                              // showCloseIcon: true,
                              title: "Success",
                              titleTextStyle: const TextStyle(
                                  color: Color(0xFF293265),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              desc: "Saved successfully.",
                              descTextStyle: const TextStyle(fontSize: 18),
                              btnOkOnPress: () {
                                Get.obs();
                              },
                              btnOkColor: Colors.pink)
                          .show();
                    }
                  },
                  child: Container(
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xFFff6d92),
                          Color(0xFFff5478),
                          Color(0xFFff385c),
                        ],
                      ),
                    ),
                    child: const Text(
                      "Save",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
