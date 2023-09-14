import 'dart:convert';
import 'package:assignment2/RestAPIs/APis.dart';
import 'package:assignment2/Views/Auth/OTPSignUp.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class RegistrationController extends GetxController {
  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  Future<void> registerWithEmail(
    String email,
    String pass,
  ) async {
    try {
      var headers = {"Content-type": 'application/json'};
      var url = Uri.parse(APIs.baseUrl + APIs.authEndPoints.register);
      Map body = {"email": email, "password": pass};

      http.Response response =
          await http.post(url, body: jsonEncode(body), headers: headers);

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        if (json["success"] == true) {
          Get.to(OTPSignUp(
            email: email,
          ));
        } else {
          throw jsonDecode(response.body)["message"] ??
              "Unknown Error Occurred";
        }
      } else {
        Get.defaultDialog(title: 'Error', middleText: 'User Already Exists.');
      }
    } catch (e) {
      print("Register Error: $e");
    }
  }
}
