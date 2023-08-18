class APIs {
  static const String baseUrl = "http://restapi.adequateshop.com/api/";
  static var authEndPoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String register = "authaccount/registration";
  final String login = "authaccount/login";
}
