import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Controllers/registration_controller.dart';
import 'package:assignment2/Views/Auth/Login.dart';
import 'package:assignment2/Views/Auth/OTPSignUp.dart';
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

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 10),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFF293265),
                  ))),
          Column(
            children: [
              CircleAvatar(
                radius: 100,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/dogs_register.jpg',
                    height: 300,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.2), // Shadow color and opacity
                      spreadRadius: 10,
                      blurRadius: 20,
                      offset: Offset(0, 1), // Shadow offset
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.center,
              width: w,
              child: Text(
                'Sign Up',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 25.w,
                    fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: h * 0.58,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      margin:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: TextFormField(
                        controller: registrationController.fullNameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your full name';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Color(0xFF5C6098)),
                        decoration: InputDecoration(
                          label: const Text('Full Name'),
                          labelStyle: const TextStyle(color: Color(0xFF5C6098)),
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
                            Icons.person,
                            color: Color(0xFF5C6098),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      margin:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: TextFormField(
                        controller: registrationController.emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty || value.contains('@')) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Color(0xFF5C6098)),
                        decoration: InputDecoration(
                          label: const Text('Email'),
                          labelStyle: const TextStyle(color: Color(0xFF5C6098)),
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
                            Icons.email,
                            color: Color(0xFF5C6098),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        controller: registrationController.passwordController,
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
                          label: const Text('Password'),
                          labelStyle: const TextStyle(color: Color(0xFF5C6098)),
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        controller:
                            registrationController.confirmPasswordController,
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
                          labelStyle: const TextStyle(color: Color(0xFF5C6098)),
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        registrationController.registerWithEmail();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                            child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
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
                                color: Color(0xFF5C6098), fontSize: 16),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
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
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
