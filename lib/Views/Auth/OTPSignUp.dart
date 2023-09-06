import 'package:assignment2/Controllers/forgot_otp_controller.dart';
import 'package:assignment2/Views/Auth/Login.dart';
import 'package:assignment2/Views/Auth/newPassword.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OTPSignUp extends StatefulWidget {
  @override
  State<OTPSignUp> createState() => _OTPSignUpState();
}

class _OTPSignUpState extends State<OTPSignUp> {
  FocusNode firstDigitFocusNode = FocusNode();
  FocusNode secondDigitFocusNode = FocusNode();
  FocusNode thirdDigitFocusNode = FocusNode();
  FocusNode fourthDigitFocusNode = FocusNode();
  FocusNode fifthDigitFocusNode = FocusNode();
  FocusNode sixthDigitFocusNode = FocusNode();

  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();
  final TextEditingController _otpController5 = TextEditingController();
  final TextEditingController _otpController6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xFFFFF6E6),
        body: Column(children: [
          Container(
            height: h * .3,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/dogs_forgot_otp.jpg"),
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
                        color: Colors.white,
                      )),
                ),
                Positioned(
                  bottom: 10,
                  left: 90,
                  child: Text(
                    'Verify Your Email',
                    style: TextStyle(
                        color: Colors.yellow[500],
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                )
              ],
            ),
          ),
          Container(
            // height: h * .3,
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
            padding: const EdgeInsets.symmetric(vertical: 20),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  textAlign: TextAlign.center,
                  'We have sent the code verification to Your registered email',
                  style: TextStyle(
                    // color: Color(0xFF293265),
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildOTPTextField(_otpController1),
                      buildOTPTextField(_otpController2),
                      buildOTPTextField(_otpController3),
                      buildOTPTextField(_otpController4),
                      buildOTPTextField(_otpController5),
                      buildOTPTextField(_otpController6),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      if (_otpController1.text.isEmpty ||
                          _otpController2.text.isEmpty ||
                          _otpController3.text.isEmpty ||
                          _otpController4.text.isEmpty ||
                          _otpController5.text.isEmpty ||
                          _otpController6.text.isEmpty) {
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
                                desc: "Please enter valid otp.",
                                descTextStyle: const TextStyle(fontSize: 18),
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
                        ),
                      ),
                      child: const Text(
                        "Verify",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }

  Widget buildOTPTextField(TextEditingController controller) {
    return SizedBox(
      width: 50.0,
      child: TextFormField(
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 18, color: Color(0xFF293265)),
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        maxLength: 1,
        decoration: const InputDecoration(
            counterText: "",
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF293265))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF293265))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF293265)))),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter a digit';
          }
          return null;
        },
        onChanged: (value) {
          if (value.isNotEmpty) {
            FocusScope.of(context).nextFocus();
          } else {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }
}
