import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:navigi/pages/mainscreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 43, 235, 49),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Image.asset(
                  "assets/images/person.png",
                  width: 200,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Container(
                    width: 400,
                    height: 650,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text("Email Address"),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 202, 200, 200),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                            ),
                            Text("Password"),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(255, 202, 200, 200),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 250,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text("Forgot Password?"))
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                            width: 330,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainScreen()));
                                },
                                child: Text("Next",
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.black,
                                    )))),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
