import 'dart:convert';
import 'package:assignment2/RestAPIs/APis.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  Future<void> loginWithEmail() async {
    try {
      // Check if email and password are empty
      if (emailController.text.isEmpty || passwordController.text.isEmpty) {
        Get.dialog(
          AlertDialog(
            title: const Text('Error'),
            icon: const Icon(Icons.warning),
            content: const Text(
              textAlign: TextAlign.center,
              'Please fill in both email and password.',
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
        var url = Uri.parse(APIs.baseUrl + APIs.authEndPoints.login);
        Map body = {
          "email": emailController.text,
          "password": passwordController.text
        };

        http.Response response =
            await http.post(url, body: jsonEncode(body), headers: headers);

        if (response.statusCode == 200) {
          final json = jsonDecode(response.body);
          if (json['code'] == 0) {
            var token = json['data']['Token'];
            print(token);
            final SharedPreferences? pref = await _pref;
            emailController.clear();
            passwordController.clear();
            Get.off(const MainHome());
          } else {
            Get.defaultDialog(
                title: "Credentials",
                middleText: "Invalid username or password.");
          }
        } else {
          Get.defaultDialog(title: "Error", middleText: 'Something went wrong');
        }
      }
    } catch (e) {
      Get.defaultDialog(title: "Warning", middleText: 'Something went wrong');
    }
  }
}



//   Future<void> loginWithEmail() async {
//     try {
//       var headers = {"Content-type": 'application/json'};
//       var url = Uri.parse(APIs.baseUrl + APIs.authEndPoints.login);
//       Map body = {
//         "email": emailController.text,
//         "password": passwordController.text
//       };

//       http.Response response =
//           await http.post(url, body: jsonEncode(body), headers: headers);

//       if (response.statusCode == 200) {
//         final json = jsonDecode(response.body);
//         if (json['code'] == 0) {
//           var token = json['data']['Token'];
//           print(token);
//           final SharedPreferences? pref = await _pref;
//           emailController.clear();
//           passwordController.clear();
//           Get.off(MainHome());
//         } else {
//           throw jsonDecode(response.body)["message"] ??
//               "Unknown Error Occurred";
//         }
//       } else {
//         throw jsonDecode(response.body)["message"] ?? "Unknown Error Occurred";
//       }
//     } catch (e) {
//       print("Login Error: $e");
//       Get.back();
//     }
//   }