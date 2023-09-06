import 'dart:ui';

import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Controllers/login_controller.dart';
import 'package:assignment2/Views/Auth/OtpForgot.dart';
import 'package:assignment2/Views/Auth/SignUp.dart';
import 'package:assignment2/Views/Auth/forgetPass.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:assignment2/Views/Widgets/LoginTop.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  LoginController loginController = Get.put(LoginController());

  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFFFFF6E6),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: h * .4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/dog_login.jpeg"),
                        fit: BoxFit.cover)),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 110, left: 55),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black,
                        Colors.black,
                        Colors.black,
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Welcome to',
                            style: TextStyle(
                                fontSize: 25, color: Colors.yellow[600]),
                            children: [
                              TextSpan(
                                  text: ' Dog Tinder',
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Colors.yellow[500],
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      const Text(
                        'SignIn to Continue',
                        style: TextStyle(
                            color: Color(0xFFFFF6E6),
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 280,
                child: Container(
                  height: h * .6,
                  width: w - 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
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
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _userController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty || !value.contains("@")) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                            style: const TextStyle(color: Color(0xFF5C6098)),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              label: const Text('Username'),
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
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color(0xFF5C6098),
                                  )),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.red)),
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Color(0xFF5C6098),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: _passController,
                            obscureText: _isObscure,
                            maxLength: 8,
                            validator: (value) {
                              if (value!.isEmpty || value.length == 8) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            style: const TextStyle(
                              color: Color(0xFF5C6098),
                            ),
                            decoration: InputDecoration(
                              counterText: '',
                              label: const Text('Password'),
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
                                  borderSide: const BorderSide(
                                      width: 2, color: Colors.grey)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: const BorderSide(
                                    width: 2,
                                    color: Color(0xFF5C6098),
                                  )),
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
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 20),
                            child: TextButton(
                                child: const Text(
                                  'Forgot Password ?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFF293265),
                                  ),
                                ),
                                onPressed: () {
                                  Get.to(const ForgotPassword());
                                }),
                          ),
                          InkWell(
                            onTap: () {
                              if (_userController.text.isEmpty &&
                                  _passController.text.isEmpty) {
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
                                            "Please enter your email and password.",
                                        descTextStyle:
                                            const TextStyle(fontSize: 18),
                                        btnOkOnPress: () {
                                          Get.obs();
                                        },
                                        btnOkColor: Colors.pink)
                                    .show();
                              } else if (_passController.text.length < 8 &&
                                  _passController.text.isNotEmpty) {
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
                                            "Please enter a password of at least 8 characters.",
                                        descTextStyle:
                                            const TextStyle(fontSize: 18),
                                        btnOkOnPress: () {
                                          Get.obs();
                                        },
                                        btnOkColor: Colors.pink)
                                    .show();
                              } else if (_userController.text.isEmpty) {
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
                                            "Please enter your email address.",
                                        descTextStyle:
                                            const TextStyle(fontSize: 18),
                                        btnOkOnPress: () {
                                          Get.obs();
                                        },
                                        btnOkColor: Colors.pink)
                                    .show();
                              } else if (!_userController.text.contains("@") &&
                                  _userController.text.isNotEmpty) {
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
                                            "Please enter valid email address.",
                                        descTextStyle:
                                            const TextStyle(fontSize: 18),
                                        btnOkOnPress: () {
                                          Get.obs();
                                        },
                                        btnOkColor: Colors.pink)
                                    .show();
                              } else if (_passController.text.isEmpty) {
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
                                        desc: "Please enter your password.",
                                        descTextStyle:
                                            const TextStyle(fontSize: 18),
                                        btnOkOnPress: () {
                                          Get.obs();
                                        },
                                        btnOkColor: Colors.pink)
                                    .show();
                              } else {
                                Get.to(const MainHome());
                              }

                              // Get.to(const MainHome());
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
                                "Login",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Stack(
                            children: [
                              const Divider(
                                indent: 20,
                                endIndent: 20,
                                thickness: 2,
                                color: Color(0xFF5C6098),
                              ),
                              Positioned(
                                  left: 150,
                                  right: 150,
                                  child: Container(
                                      alignment: Alignment.center,
                                      color: Colors.white,
                                      child: Text('Or'))),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: InkWell(
                                  onTap: () {
                                    print('Google');
                                  },
                                  child: Card(
                                    elevation: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          Image.asset('assets/png/Google.png'),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: InkWell(
                                  onTap: () {
                                    print('Facebook');
                                  },
                                  child: Card(
                                    elevation: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                          'assets/png/Facebook.png'),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Opacity(
                                opacity: 0.7,
                                child: Text(
                                  "Don't have an account ?",
                                  style: TextStyle(
                                      color: Color(0xFF5C6098), fontSize: 16),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Get.to(const SignUp());
                                  },
                                  child: const Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF293265),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      )),
                )),
          ],
        ));
  }
}
