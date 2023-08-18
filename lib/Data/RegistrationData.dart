class RegistrationData {
  String name;
  String email;
  String password;

  RegistrationData(this.name, this.email, this.password);

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
      };
}
