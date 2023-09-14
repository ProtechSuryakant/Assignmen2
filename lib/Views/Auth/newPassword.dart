import 'package:assignment2/Views/Auth/Login.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordChange extends StatefulWidget {
  String email;

  PasswordChange({super.key, required this.email});

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  final TextEditingController _newPassController = TextEditingController();
  final TextEditingController _conPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color(0xFFFFF6E6),
        body: Stack(children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: h * .3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/new_pass.jpg"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black,
                              Colors.black,
                            ],
                          ),
                        ),
                      )),
                  const Positioned(
                    bottom: 50,
                    left: 100,
                    child: Text(
                      'Change Password',
                      style: TextStyle(
                          color: Color(0xFFFFF6E6),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListView(
            children: [
              Container(
                height: h * .35,
                width: w - 40,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 180),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 5,
                        color: Colors.grey.withOpacity(.3),
                        offset: const Offset(0, 3)),
                  ],
                ),
                child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _newPassController,
                              obscureText: _isObscure,
                              maxLength: 8,
                              validator: (value) {
                                if (value!.isEmpty || value.length == 8) {
                                  return 'Please enter your password';
                                }

                                return null;
                              },
                              style: const TextStyle(color: Color(0xFF5C6098)),
                              decoration: InputDecoration(
                                counterText: '',
                                label: const Text('New-Password'),
                                labelStyle:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red)),
                                prefixIcon: const Icon(
                                  Icons.key,
                                  color: Color(0xFF5C6098),
                                ),
                                suffixIcon: IconButton(
                                  color: const Color(0xFF5C6098),
                                  icon: _isObscure
                                      ? const Icon(
                                          Icons.visibility,
                                          color: Color(0xFF5C6098),
                                        )
                                      : const Icon(
                                          Icons.visibility_off,
                                          color: Color(0xFF5C6098),
                                        ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: _conPassController,
                              obscureText: _isObscure,
                              maxLength: 8,
                              validator: (value) {
                                if (value!.isEmpty || value.length == 8) {
                                  return 'Please enter Confirm password';
                                }

                                return null;
                              },
                              style: const TextStyle(color: Color(0xFF5C6098)),
                              decoration: InputDecoration(
                                counterText: '',
                                label: const Text('Confirm Password'),
                                labelStyle:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red)),
                                prefixIcon: const Icon(
                                  Icons.key,
                                  color: Color(0xFF5C6098),
                                ),
                                suffixIcon: IconButton(
                                  color: const Color(0xFF5C6098),
                                  icon: _isObscure
                                      ? const Icon(
                                          Icons.visibility,
                                          color: Color(0xFF5C6098),
                                        )
                                      : const Icon(Icons.visibility_off,
                                          color: Color(0xFF5C6098)),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                if (_newPassController.text.isEmpty ||
                                    _conPassController.text.isEmpty) {
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
                                          desc: "Please enter required fields.",
                                          descTextStyle:
                                              const TextStyle(fontSize: 18),
                                          btnOkOnPress: () {
                                            Get.obs();
                                          },
                                          btnOkColor: Colors.pink)
                                      .show();
                                } else if (_conPassController.text !=
                                    _newPassController.text) {
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
                                          desc:
                                              "New Password and Confirm password not matching.",
                                          descTextStyle:
                                              const TextStyle(fontSize: 18),
                                          btnOkOnPress: () {
                                            Get.obs();
                                          },
                                          btnOkColor: Colors.pink)
                                      .show();
                                } else if (_newPassController.text.length < 8) {
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
                                          desc:
                                              "Please enter at least 6 character password.",
                                          descTextStyle:
                                              const TextStyle(fontSize: 18),
                                          btnOkOnPress: () {
                                            Get.obs();
                                          },
                                          btnOkColor: Colors.pink)
                                      .show();
                                } else if (_conPassController.text.length < 8) {
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
                                          desc:
                                              "Please enter at least 6 character password.",
                                          descTextStyle:
                                              const TextStyle(fontSize: 18),
                                          btnOkOnPress: () {
                                            Get.obs();
                                          },
                                          btnOkColor: Colors.pink)
                                      .show();
                                } else {
                                  Get.off(const Login());
                                }
                              },
                              child: Container(
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFFff99be),
                                        Color(0xFFff83a9),
                                        Color(0xFFff6d92),
                                        Color(0xFFff5478),
                                        Color(0xFFff385c),
                                      ],
                                    )),
                                child: const Text(
                                  "Change Password",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ]),
                    )),
              )
            ],
          ),
          Positioned(
            left: 10,
            top: 20,
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ),
        ]));
  }
}
