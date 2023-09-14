import 'dart:convert';
import 'dart:math';
import 'package:assignment2/RestAPIs/APis.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  Future<void> loginWithEmail(
      String email, String password, BuildContext context) async {
    try {
      var headers = {"Content-type": 'application/json'};
      var url = Uri.parse(APIs.baseUrl + APIs.authEndPoints.login);
      Map body = {
        "email": email,
        "password": password,
        "token": Random.secure().toString()
      };

      http.Response response =
          await http.patch(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json['success'] == true) {
          bool isActive = json['updatedUser']['active'];
          print(isActive);
          var token = json['updatedUser']['Token'];
          print(token);
          final SharedPreferences? pref = await _pref;

          Get.off(const MainHome());
        } else {}
      } else {
        AwesomeDialog(
                context: context,
                dialogType: DialogType.warning,
                animType: AnimType.topSlide,
                // showCloseIcon: true,
                title: "Warning",
                titleTextStyle: const TextStyle(
                    color: Color(0xFF293265),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                desc: "Something went wrong",
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
              desc: "Something went wrong",
              descTextStyle: const TextStyle(fontSize: 18),
              btnOkOnPress: () {
                Get.obs();
              },
              btnOkColor: Colors.pink)
          .show();
    }
  }
}
