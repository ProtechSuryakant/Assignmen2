import 'dart:convert';

import 'package:assignment2/RestAPIs/APIs.dart';
import 'package:assignment2/Views/Auth/OtpForgot.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ForgotPassController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Future<void> forgotWithEmail() async {
    try {
      if (emailController.text.isEmpty || !emailController.text.contains("@")) {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            icon: const Icon(Icons.warning),
            content: const Text(
              textAlign: TextAlign.center,
              'Please enter email.',
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
        var headers = {"Content-type": "'application/json'"};
        var url = Uri.parse(APIs.baseUrl + APIs.authEndPoints.forgotPass);
        Map body = {"email": emailController.text};

        http.Response response =
            await http.post(url, body: jsonEncode(body), headers: headers);

        if (response.statusCode == 200) {
          final json = jsonDecode(response.body);
          if (json['success'] == true) {
            Get.off(OtpForgot());
          } else {
            Get.defaultDialog(
                title: "User Error", middleText: "User not found.");
          }
        } else {
          Get.defaultDialog(
              title: "Verification", middleText: "Invalid email.");
        }
      }
    } catch (e) {
      Get.defaultDialog(title: "Error", middleText: 'Something went wrong');
    }
  }
}
