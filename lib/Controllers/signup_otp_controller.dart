import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:assignment2/RestAPIs/APis.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class otpSignUpController extends GetxController {
  TextEditingController otpController1 = TextEditingController();
  TextEditingController otpController2 = TextEditingController();
  TextEditingController otpController3 = TextEditingController();
  TextEditingController otpController4 = TextEditingController();
  TextEditingController otpController5 = TextEditingController();
  TextEditingController otpController6 = TextEditingController();

  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  Future<void> verifyWithOTP(String email) async {
    try {
      // Check if email and password are empty
      if (otpController1.text.isEmpty ||
          otpController2.text.isEmpty ||
          otpController3.text.isEmpty ||
          otpController4.text.isEmpty ||
          otpController5.text.isEmpty ||
          otpController6.text.isEmpty) {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            icon: const Icon(Icons.warning),
            content: const Text(
              textAlign: TextAlign.center,
              'Please enter all OTP.',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Get.back(); // Close the dialog
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
        return;
      } else {
        var headers = {"Content-type": 'application/json'};
        var url = Uri.parse(APIs.baseUrl + APIs.authEndPoints.verifyEmail);
        var OTP = otpController1.text +
            otpController2.text +
            otpController3.text +
            otpController4.text +
            otpController5.text +
            otpController6.text;
        Map body = {"email": email, "otp": OTP};

        http.Response response =
            await http.patch(url, body: jsonEncode(body), headers: headers);

        if (response.statusCode == 200) {
          final json = jsonDecode(response.body);
          if (json['success'] == true) {
            otpController1.clear();
            otpController2.clear();
            otpController3.clear();
            otpController4.clear();
            otpController5.clear();
            otpController6.clear();
            Get.off(const MainHome());
          } else {
            Get.defaultDialog(title: "Verification", middleText: "Invalid OTP");
          }
        } else {
          Get.defaultDialog(title: "Verification", middleText: "Invalid OTP.");
        }
      }
    } catch (e) {
      Get.defaultDialog(title: "Error", middleText: 'Something went wrong');
    }
  }
}
