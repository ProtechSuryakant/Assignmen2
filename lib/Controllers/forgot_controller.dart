import 'dart:convert';

import 'package:assignment2/RestAPIs/APIs.dart';
import 'package:assignment2/Views/Auth/OtpForgot.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ForgotPassController extends GetxController {
  Future<void> forgotWithEmail(String email, BuildContext context) async {
    try {
      var headers = {"Content-type": 'application/json'};
      var url = Uri.parse(APIs.baseUrl + APIs.authEndPoints.forgotPass);
      Map body = {
        "email": email,
      };

      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['success'] == true) {
          Get.off(OtpForgot(
            email: email,
          ));
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
                  desc: "User not found.",
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
                desc: "Invalid email.",
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
