import 'package:assignment2/Constant/Colors.dart';
import 'package:assignment2/Views/Auth/SignUp.dart';
import 'package:assignment2/Views/Auth/forgetPass.dart';
import 'package:assignment2/Views/Home/MainHome.dart';
import 'package:assignment2/Views/Widgets/LoginTop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const LoginTop(),
          const SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.center,
              width: w,
              child: Text(
                'Sign In',
                style: TextStyle(
                    color: const Color(0xFF5C6098),
                    fontSize: 25.w,
                    fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: h * 0.63,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      margin:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty || !value.contains("@")) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        style: const TextStyle(
                          color: Color(0xFF5C6098),
                        ),
                        decoration: InputDecoration(
                          label: const Text('Username'),
                          labelStyle: const TextStyle(
                            color: Color(0xFF5C6098),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color(0xFF5C6098),
                              )),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color(0xFF5C6098),
                              )),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.red)),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Color(0xFF5C6098),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        // controller: _passwordController,
                        obscureText: _isObscure,
                        maxLength: 8,

                        validator: (value) {
                          if (value!.isEmpty || value.length == 8) {
                            return 'Please enter your password';
                          }

                          return null;
                        },

                        style: const TextStyle(
                          color: Color(0xFF5C6098),
                        ),
                        decoration: InputDecoration(
                          counterText: '',
                          label: const Text('Password'),
                          labelStyle: const TextStyle(
                            color: Color(0xFF5C6098),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color(0xFF5C6098),
                              )),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color(0xFF5C6098),
                              )),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  width: 2, color: Colors.red)),
                          prefixIcon: const Icon(
                            Icons.key,
                            color: Color(0xFF5C6098),
                          ),
                          suffixIcon: IconButton(
                            color: const Color(0xFF5C6098),
                            icon: _isObscure
                                ? const Icon(
                                    Icons.visibility,
                                    color: Color(0xFF5C6098),
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: Color(0xFF5C6098),
                                  ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 180),
                      child: TextButton(
                        child: const Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF293265),
                          ),
                        ),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword())),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainHome()));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                            child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                        child: Text(
                      'Or',
                      style: TextStyle(color: Color(0xFF5C6098)),
                    )),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Divider(
                        indent: 100,
                        endIndent: 100,
                        color: Color(0xFF5C6098),
                        thickness: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: InkWell(
                            onTap: () {
                              print('Google');
                            },
                            child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/png/Google.png'),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: InkWell(
                            onTap: () {
                              print('Facebook');
                            },
                            child: Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/png/Facebook.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Opacity(
                          opacity: 0.7,
                          child: Text(
                            "Don't have an account ?",
                            style: TextStyle(
                                color: Color(0xFF5C6098), fontSize: 16),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF293265),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
