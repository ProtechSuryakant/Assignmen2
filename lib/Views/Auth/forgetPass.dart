import 'package:assignment2/Controllers/forgot_controller.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({
    super.key,
  });

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();

  ForgotPassController forgotPassController = Get.put(ForgotPassController());

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFFFFF6E6),
        body: Column(children: [
          Container(
            height: h * .3,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/forgot.jpg"),
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
                        color: Colors.black.withOpacity(0.3),
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
                Positioned(
                  left: 10,
                  top: 20,
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      )),
                ),
                Positioned(
                  bottom: 10,
                  left: 90,
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.yellow[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: h * .25,
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
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8.0),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      textAlign: TextAlign.left,
                      'Enter your registered email',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  TextFormField(
                    focusNode: _emailFocusNode,
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains("@")) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    style: const TextStyle(
                      color: Color(0xFF5C6098),
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      label: const Text('Email'),
                      labelStyle: const TextStyle(
                        color: Color(0xFF5C6098),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Color(0xFF5C6098),
                          )),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(width: 2, color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Color(0xFF5C6098),
                          )),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(width: 2, color: Colors.red)),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xFF5C6098),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      if (_emailController.text.isEmpty) {
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
                                desc: "Please enter your email.",
                                descTextStyle: const TextStyle(fontSize: 18),
                                btnOkOnPress: () {
                                  Get.obs;
                                },
                                btnOkColor: Colors.pink)
                            .show();
                      } else if (!_emailController.text.isEmail) {
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
                                desc: "Please enter your valid email address.",
                                descTextStyle: const TextStyle(fontSize: 18),
                                btnOkOnPress: () {
                                  Get.obs();
                                },
                                btnOkColor: Colors.pink)
                            .show();
                      } else {
                        forgotPassController.forgotWithEmail(
                            _emailController.text.trim(), context);
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
                        ),
                      ),
                      child: const Text(
                        "Sent",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
