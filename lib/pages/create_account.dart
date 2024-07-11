import 'package:flutter/material.dart';
import 'package:navigi/DropDownButton.dart';
import 'package:navigi/cv_screen.dart';
import 'package:navigi/dropdownbuttonmunicipal.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  String? selectedState;
  String? sex;
  String? dateOfBirth;
  String? phoneNumber;
  String? username;
  String? locationState;
  String? locationMunicipal;
  String? level;
  List<String> services = List<String>.filled(2, '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 235, 49),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.keyboard_double_arrow_left_outlined)),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Create Account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "Sex :",
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: 80,
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 202, 200, 200),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            onChanged: (value) {
                              sex = value;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 35,
                        ),
                        Text("Date of birth :", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "XX/XX/XXXX",
                                filled: true,
                                fillColor: Color.fromARGB(255, 202, 200, 200),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            onChanged: (value) {
                              dateOfBirth = value;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text("Phone Number :", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixText: '+213',
                              filled: true,
                              fillColor: Color.fromARGB(255, 202, 200, 200),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            keyboardType: TextInputType.phone,
                            onChanged: (value) {
                              phoneNumber = value;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 35,
                        ),
                        Text("UserName :", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 202, 200, 200),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            onChanged: (value) {
                              username = value;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Location :",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                            color: Colors.grey[400],
                            width: 139,
                            height: 50,
                            child: DropdownButtonWithIcon(
                              onChanged: (value) {
                                setState(() {
                                  locationState = value;
                                });
                              },
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            color: Colors.grey[400],
                            width: 139,
                            height: 50,
                            child: DropdownButtonMunicipal(
                              onChanged: (value) {
                                setState(() {
                                  locationMunicipal = value;
                                });
                              },
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "The Level :",
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 202, 200, 200),
                                borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    level = "free work";
                                  });
                                },
                                child: Text(
                                  "free work",
                                  style: TextStyle(color: Colors.black),
                                ))),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 202, 200, 200),
                                borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    level = "professional";
                                  });
                                },
                                child: Text(
                                  "professional",
                                  style: TextStyle(color: Colors.black),
                                ))),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 202, 200, 200),
                                borderRadius: BorderRadius.circular(20)),
                            child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    level = "university";
                                  });
                                },
                                child: Text(
                                  "university",
                                  style: TextStyle(color: Colors.black),
                                ))),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "Services you can provide :",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: List.generate(5, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 25),
                          child: Container(
                            width: 300,
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 202, 200, 200),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              onChanged: (value) {
                                services[index] = value;
                              },
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 250,
                        ),
                        Container(
                          width: 140,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: TextButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfilePage(
                                      phoneNumber: phoneNumber ?? '',
                                      username: username ?? '',
                                      locationState: locationState ?? '',
                                      locationMunicipal:
                                          locationMunicipal ?? '',
                                      level: level ?? '',
                                      services: services,
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Text(
                              "Save",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
