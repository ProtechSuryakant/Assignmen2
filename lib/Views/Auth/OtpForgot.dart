import 'package:assignment2/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpForgot extends StatefulWidget {
  const OtpForgot({super.key});

  @override
  State<OtpForgot> createState() => _OtpForgotState();
}

class _OtpForgotState extends State<OtpForgot> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 27,
                    color: secondaryColor,
                  ))),
          CircleAvatar(
            radius: 100,
            child: ClipOval(
                child: Image.asset(
              'assets/images/dogs_forgot_otp.jpg',
              height: 300,
              width: 200,
              fit: BoxFit.cover,
            )),
          ),
          Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'OTP',
                style: TextStyle(
                    color: secondaryColor,
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
            child: Column(
              children: [
                Container(
                  height: 20,
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: const Text(
                    'OTP Verification',
                    style: TextStyle(
                        color: Color(0xFF293265),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: const Text(
                    'We have sent the code verification to Your Mobile Number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF293265),
                      fontSize: 16,
                    ),
                  ),
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF293265)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF293265)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF293265)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF293265)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF293265)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF293265)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF293265)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF293265)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF293265)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF293265)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 50,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: const TextStyle(
                                fontSize: 25, color: Color(0xFF293265)),
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                                hintStyle:
                                    const TextStyle(color: Color(0xFF293265)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Color(0xFF293265))),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.red))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isDismissible: false,
                        isScrollControlled: false,
                        enableDrag: false,
                        builder: (context) => buildSheet());
                  },
                  focusColor: const Color(0xFF293265),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color(0xFF293265),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      'Verify',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget buildSheet() => Container(
  //       height: MediaQuery.of(context).size.height * 0.4,
  //       decoration: const BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(50), topRight: Radius.circular(50)),
  //       ),
  //       child: Column(
  //         children: [
  //           SizedBox(
  //             height: 50,
  //             child: TextFormField(
  //               // controller: _passwordController,
  //               obscureText: _isObscure,
  //               maxLength: 8,

  //               validator: (value) {
  //                 if (value!.isEmpty || value.length == 8) {
  //                   return 'Please enter your new password';
  //                 }

  //                 return null;
  //               },

  //               style: const TextStyle(color: Color(0xFF5C6098)),
  //               decoration: InputDecoration(
  //                 counterText: '',
  //                 label: const Text('New Password'),
  //                 labelStyle: const TextStyle(color: Color(0xFF5C6098)),
  //                 enabledBorder: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(20),
  //                     borderSide:
  //                         const BorderSide(width: 2, color: Color(0xFF5C6098))),
  //                 disabledBorder: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(20),
  //                     borderSide:
  //                         const BorderSide(width: 2, color: Colors.grey)),
  //                 focusedBorder: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(20),
  //                     borderSide:
  //                         const BorderSide(width: 2, color: Color(0xFF5C6098))),
  //                 errorBorder: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(20),
  //                     borderSide:
  //                         const BorderSide(width: 2, color: Colors.red)),
  //                 prefixIcon: const Icon(
  //                   Icons.key,
  //                   color: Color(0xFF5C6098),
  //                 ),
  //                 suffixIcon: IconButton(
  //                   color: const Color(0xFF5C6098),
  //                   icon: _isObscure
  //                       ? const Icon(
  //                           Icons.visibility,
  //                           color: Color(0xFF5C6098),
  //                         )
  //                       : const Icon(
  //                           Icons.visibility_off,
  //                           color: Color(0xFF5C6098),
  //                         ),
  //                   onPressed: () {
  //                     setState(() {
  //                       _isObscure = !_isObscure;
  //                     });
  //                   },
  //                 ),
  //               ),
  //             ),
  //           ),
  //           const SizedBox(
  //             height: 20,
  //           ),
  //           SizedBox(
  //             height: 50,
  //             child: TextFormField(
  //               // controller: _passwordController,
  //               obscureText: _isObscure,
  //               maxLength: 8,

  //               validator: (value) {
  //                 if (value!.isEmpty || value.length == 8) {
  //                   return 'Please enter Confirm password';
  //                 }

  //                 return null;
  //               },

  //               style: const TextStyle(color: Color(0xFF5C6098)),
  //               decoration: InputDecoration(
  //                 counterText: '',
  //                 label: const Text('Re-Password'),
  //                 labelStyle: const TextStyle(color: Color(0xFF5C6098)),
  //                 enabledBorder: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(20),
  //                     borderSide:
  //                         const BorderSide(width: 2, color: Color(0xFF5C6098))),
  //                 disabledBorder: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(20),
  //                     borderSide:
  //                         const BorderSide(width: 2, color: Colors.grey)),
  //                 focusedBorder: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(20),
  //                     borderSide:
  //                         const BorderSide(width: 2, color: Color(0xFF5C6098))),
  //                 errorBorder: OutlineInputBorder(
  //                     borderRadius: BorderRadius.circular(20),
  //                     borderSide:
  //                         const BorderSide(width: 2, color: Colors.red)),
  //                 prefixIcon: const Icon(
  //                   Icons.key,
  //                   color: Color(0xFF5C6098),
  //                 ),
  //                 suffixIcon: IconButton(
  //                   color: const Color(0xFF5C6098),
  //                   icon: _isObscure
  //                       ? const Icon(
  //                           Icons.visibility,
  //                           color: Color(0xFF5C6098),
  //                         )
  //                       : const Icon(Icons.visibility_off,
  //                           color: Color(0xFF5C6098)),
  //                   onPressed: () {
  //                     setState(() {
  //                       _isObscure = !_isObscure;
  //                     });
  //                   },
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Container(
  //             alignment: Alignment.centerRight,
  //             child: TextButton(
  //                 onPressed: () {},
  //                 child: const Text(
  //                   'Change Password',
  //                   style: TextStyle(fontSize: 16, color: Color(0xFF393265)),
  //                 )),
  //           )
  //         ],
  //       ),
  //     );

  Widget buildSheet() => Container(
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Change Password',
              style: TextStyle(
                  color: Color(0xFF293265),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: const Text(
                'We have sent the code verification to your email',
                style: TextStyle(fontSize: 18, color: Color(0xFF293265)),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
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

                style: const TextStyle(color: Color(0xFF5C6098)),
                decoration: InputDecoration(
                  counterText: '',
                  label: const Text('Password'),
                  labelStyle: const TextStyle(color: Color(0xFF5C6098)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, color: Color(0xFF5C6098))),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, color: Color(0xFF5C6098))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.red)),
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
                    return 'Please enter Confirm password';
                  }

                  return null;
                },

                style: const TextStyle(color: Color(0xFF5C6098)),
                decoration: InputDecoration(
                  counterText: '',
                  label: const Text('Confirm Password'),
                  labelStyle: const TextStyle(color: Color(0xFF5C6098)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, color: Color(0xFF5C6098))),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, color: Color(0xFF5C6098))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(width: 2, color: Colors.red)),
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
                        : const Icon(Icons.visibility_off,
                            color: Color(0xFF5C6098)),
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
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              focusColor: const Color(0xFF293265),
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: const Color(0xFF293265),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  'Change Password',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
          ],
        ),
      );
}
