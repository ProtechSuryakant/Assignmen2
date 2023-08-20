import 'dart:convert';

import 'package:assignment2/Data/RegistrationData.dart';
import 'package:assignment2/RestAPIs/APis.dart';
import 'package:assignment2/Views/Auth/OTPSignUp.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class RegistrationController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  Future<void> registerWithEmail() async {
    try {
      if (fullNameController.text.isEmpty ||
          emailController.text.isEmpty ||
          passwordController.text.isEmpty ||
          confirmPasswordController.text.isEmpty) {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            icon: const Icon(Icons.warning),
            content: const Text(
              textAlign: TextAlign.center,
              'Please fill in all field.',
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
      } else if (passwordController.text != confirmPasswordController.text) {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            icon: const Icon(Icons.warning),
            content: const Text(
              textAlign: TextAlign.center,
              'Password and confirm password is not matching.',
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
        var url = Uri.parse(APIs.baseUrl + APIs.authEndPoints.register);
        Map body = {
          "name": fullNameController.text,
          "email": emailController.text,
          "password": passwordController.text
        };

        http.Response response =
            await http.post(url, body: jsonEncode(body), headers: headers);

        if (response.statusCode == 200) {
          final json = jsonDecode(response.body);
          if (json['code'] == 0) {
            var token = json['data']['Token'];
            print("Token Body:  $token");
            final SharedPreferences? pref = await _pref;
            fullNameController.clear();
            emailController.clear();
            passwordController.clear();
            confirmPasswordController.clear();
            Get.off(const OTPSignUp());
          } else {
            throw jsonDecode(response.body)["message"] ??
                "Unknown Error Occurred";
          }
        } else {
          throw jsonDecode(response.body)["message"] ??
              "Unknown Error Occurred";
        }
      }
    } catch (e) {
      print("Register Error: $e");
    }
  }
}
