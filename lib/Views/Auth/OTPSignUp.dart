import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPSignUp extends StatefulWidget {
  const OTPSignUp({super.key});

  @override
  State<OTPSignUp> createState() => _OTPSignUpState();
}

class _OTPSignUpState extends State<OTPSignUp> {
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
              'assets/images/dogs_forgot_otp.jpg',
              height: 300,
              width: 200,
            )),
          ),
          Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'OTP',
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
                  height: 20,
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: const Text(
                    'OTP Verification',
                    style: TextStyle(
                        color: Color(0xFF293265),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: const Text(
                    'We have sent the code verification to Your Mobile Number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF5C6098),
                      fontSize: 16,
                    ),
                  ),
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF5C6098)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF5C6098)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF5C6098)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF5C6098)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF5C6098)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF5C6098)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF5C6098))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainHome()));
                  },
                  focusColor: const Color(0xFF5C6098),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0xFF293565),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      'Verify',
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
}
