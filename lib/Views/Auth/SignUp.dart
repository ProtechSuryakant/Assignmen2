import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Controllers/registration_controller.dart';
import 'package:assignment2/Views/Auth/Login.dart';
import 'package:assignment2/Views/Auth/OTPSignUp.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  RegistrationController registrationController =
      Get.put(RegistrationController());

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _conPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: const Color(0xFFFFF6E6),
            body: Stack(children: [
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
                    padding: const EdgeInsets.only(top: 210),
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
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Become a Member',
                            style: TextStyle(
                                fontSize: 27,
                                color: Colors.yellow[500],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Text(
                          'Create an Account',
                          style: TextStyle(
                              color: Color(0xFFFFF6E6),
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListView(
                children: <Widget>[
                  Container(
                    height: h * .5,
                    width: w - 40,
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, top: 250),
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
                                TextFormField(
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value!.isEmpty || value.contains('@')) {
                                      return 'Please enter your email';
                                    }
                                    return null;
                                  },
                                  style:
                                      const TextStyle(color: Color(0xFF5C6098)),
                                  decoration: InputDecoration(
                                    label: const Text('Email'),
                                    labelStyle: const TextStyle(
                                        color: Color(0xFF5C6098)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            width: 2,
                                            color: Color(0xFF5C6098))),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            width: 2, color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            width: 2,
                                            color: Color(0xFF5C6098))),
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
                                  style:
                                      const TextStyle(color: Color(0xFF5C6098)),
                                  decoration: InputDecoration(
                                    counterText: '',
                                    label: const Text('Password'),
                                    labelStyle: const TextStyle(
                                        color: Color(0xFF5C6098)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            width: 2,
                                            color: Color(0xFF5C6098))),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            width: 2, color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            width: 2,
                                            color: Color(0xFF5C6098))),
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
                                  style:
                                      const TextStyle(color: Color(0xFF5C6098)),
                                  decoration: InputDecoration(
                                    counterText: '',
                                    label: const Text('Confirm Password'),
                                    labelStyle: const TextStyle(
                                        color: Color(0xFF5C6098)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            width: 2,
                                            color: Color(0xFF5C6098))),
                                    disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            width: 2, color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            width: 2,
                                            color: Color(0xFF5C6098))),
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
                                    if (_emailController.text.isEmpty ||
                                        _passController.text.isEmpty ||
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
                                              desc:
                                                  "Please fill all required fields.",
                                              descTextStyle:
                                                  const TextStyle(fontSize: 18),
                                              btnOkOnPress: () {
                                                Get.obs();
                                              },
                                              btnOkColor: Colors.pink)
                                          .show();
                                    } else if (_passController.text.length <
                                            8 &&
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
                                                  "Please enter at least 8 charente password.",
                                              descTextStyle:
                                                  const TextStyle(fontSize: 18),
                                              btnOkOnPress: () {
                                                Get.obs();
                                              },
                                              btnOkColor: Colors.pink)
                                          .show();
                                    } else if (_conPassController.text.length <
                                            8 &&
                                        _conPassController.text.isNotEmpty) {
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
                                                  "Please enter at least 8 charente password.",
                                              descTextStyle:
                                                  const TextStyle(fontSize: 18),
                                              btnOkOnPress: () {
                                                Get.obs();
                                              },
                                              btnOkColor: Colors.pink)
                                          .show();
                                    } else if (_passController.text !=
                                        _conPassController.text) {
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
                                    } else if (!_emailController.text
                                            .contains("@") &&
                                        _emailController.text.isNotEmpty) {
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
                                    } else {
                                      Get.to(OTPSignUp());
                                    }
                                  },
                                  child: Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
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
                                      "Register",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Opacity(
                                      opacity: 0.7,
                                      child: Text(
                                        "Already have an account ?",
                                        style: TextStyle(
                                            color: Color(0xFF5C6098),
                                            fontSize: 16),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Get.off(const Login());
                                        },
                                        child: const Text(
                                          'Sign In',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF293265)),
                                        ))
                                  ],
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
                      color: Colors.black,
                    )),
              ),
            ])));
  }
}
