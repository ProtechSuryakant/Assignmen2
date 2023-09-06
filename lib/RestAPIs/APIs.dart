class APIs {
  static const String baseUrl = "https://dogstinder.onrender.com/";
  static var authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String register = "user/register";
  final String login = "user/loginUser";
  final String verifyEmail = "user/verify";
  final String forgotPass = "user/forgot";
  final String forgotVerify = "user/verifyForgot";
}
