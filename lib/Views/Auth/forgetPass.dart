import 'package:assignment2/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'OtpForgot.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 27,
                    color: secondaryColor,
                  ))),
          CircleAvatar(
            radius: 100,
            child: ClipOval(
                child: Image.asset(
              'assets/images/forgot.jpg',
              height: 300,
              width: 200,
              fit: BoxFit.cover,
            )),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 10,
                  blurRadius: 20,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: secondaryColor,
                    fontSize: 25.w,
                    fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: h * 0.63,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Column(
              children: [
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains("@")) {
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
                          borderSide:
                              const BorderSide(width: 2, color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 2, color: Color(0xFF5C6098))),
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
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      isDismissible: false,
                      isScrollControlled: false,
                      enableDrag: false,
                      builder: (context) => buildSheet(),
                    );
                  },
                  focusColor: const Color(0xFF5C6098),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0xFF293265),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      'Sent',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSheet() => Container(
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                  color: Color(0xFF293265),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Icon(
                Icons.message,
                color: Colors.white,
                size: 50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Check your email',
              style: TextStyle(
                  color: Color(0xFF293265),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'We have sent a instructions to recover your password to your email',
              style: TextStyle(fontSize: 18, color: Color(0xFF293265)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => OtpForgot())),
              focusColor: const Color(0xFF293265),
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: const Color(0xFF293265),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  'Ok',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
          ],
        ),
      );
}
