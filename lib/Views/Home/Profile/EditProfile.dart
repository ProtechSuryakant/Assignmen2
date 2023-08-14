import 'package:assignment2/Constant/Colors.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formState = GlobalKey<FormState>();
  String _selectedGender = 'Male';
  String _selectedDogGender = 'Male';

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Color(0xFF293265)),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Color(0xFF293265),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
            key: _formState,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text('Full Name'),
                        labelStyle: TextStyle(color: headline),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2, color: headline)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2, color: headline)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                width: 2, color: Colors.blueGrey)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(width: 2, color: Colors.red))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    decoration: InputDecoration(
                        counterText: '',
                        label: const Text('Mobile Number'),
                        labelStyle: TextStyle(color: headline),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2, color: headline)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2, color: headline)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                width: 2, color: Colors.blueGrey)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(width: 2, color: Colors.red))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: const Text('Email'),
                      labelStyle: TextStyle(color: headline),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: headline)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2, color: headline)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              width: 2, color: Colors.blueGrey)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(width: 2, color: Colors.red)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty || !value.contains("@")) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: headline, width: 2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gender',
                        style: TextStyle(fontSize: 16, color: headline),
                      ),
                      Row(
                        children: [
                          Text(
                            'M',
                            style: TextStyle(fontSize: 16, color: headline),
                          ),
                          Radio(
                            value: 'Male',
                            groupValue: _selectedGender,
                            onChanged: (value) => setState(() {
                              _selectedGender = value!;
                            }),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'F',
                            style: TextStyle(fontSize: 16, color: headline),
                          ),
                          Radio(
                            value: 'Female',
                            groupValue: _selectedGender,
                            onChanged: (value) => setState(() {
                              _selectedGender = value!;
                            }),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'O',
                            style: TextStyle(fontSize: 16, color: headline),
                          ),
                          Radio(
                            value: 'Other',
                            groupValue: _selectedGender,
                            onChanged: (value) => setState(() {
                              _selectedGender = value!;
                            }),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MainHome()));
                  },
                  child: Container(
                    height: 50,
                    width: w,
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
