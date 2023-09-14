import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:assignment2/RestAPIs/APis.dart';
import 'package:assignment2/Views/Auth/Login.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class otpSignUpController extends GetxController {
  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  Future<void> verifyWithOTP(
      String email,
      String otp1,
      String otp2,
      String otp3,
      String otp4,
      String otp5,
      String otp6,
      BuildContext context) async {
    try {
      var headers = {"Content-type": 'application/json'};
      var url = Uri.parse(APIs.baseUrl + APIs.authEndPoints.verifyEmail);
      var OTP = otp1 + otp2 + otp3 + otp4 + otp5 + otp6;
      Map body = {"email": email, "otp": OTP};

      http.Response response =
          await http.patch(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['success'] == true) {
          Get.off(const Login());
        } else {
          AwesomeDialog(
                  context: context,
                  dialogType: DialogType.error,
                  animType: AnimType.topSlide,
                  // showCloseIcon: true,
                  title: "Error",
                  titleTextStyle: const TextStyle(
                      color: Color(0xFF293265),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  desc: "Invalid OTP.",
                  descTextStyle: const TextStyle(fontSize: 18),
                  btnOkOnPress: () {
                    Get.obs();
                  },
                  btnOkColor: Colors.pink)
              .show();
        }
      } else {
        AwesomeDialog(
                context: context,
                dialogType: DialogType.error,
                animType: AnimType.topSlide,
                // showCloseIcon: true,
                title: "Error",
                titleTextStyle: const TextStyle(
                    color: Color(0xFF293265),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                desc: "Invalid OTP.",
                descTextStyle: const TextStyle(fontSize: 18),
                btnOkOnPress: () {
                  Get.obs();
                },
                btnOkColor: Colors.pink)
            .show();
      }
    } catch (e) {
      AwesomeDialog(
              context: context,
              dialogType: DialogType.error,
              animType: AnimType.topSlide,
              // showCloseIcon: true,
              title: "Error",
              titleTextStyle: const TextStyle(
                  color: Color(0xFF293265),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              desc: "Something went wrong.",
              descTextStyle: const TextStyle(fontSize: 18),
              btnOkOnPress: () {
                Get.obs();
              },
              btnOkColor: Colors.pink)
          .show();
    }
  }
}
