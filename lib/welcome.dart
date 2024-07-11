import 'package:flutter/material.dart';
import 'package:navigi/auth/sign_in.dart';
import 'package:navigi/auth/sign_up.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 43, 235, 49),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text("NAVIGI",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 80,
            ),
            Image.asset("assets/images/logo.png"),
            SizedBox(
              height: 60,
            ),
            Text(
              "The best way to make",
              style: TextStyle(fontSize: 35, color: Colors.white),
            ),
            Text("money!", style: TextStyle(fontSize: 35, color: Colors.white)),
            SizedBox(
              height: 60,
            ),
            Container(
                width: 330,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 13, 24, 240),
                    borderRadius: BorderRadius.circular(15)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text("Sign Up",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        )))),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 90,
                ),
                Text(
                  "Already have an account ?",
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ],
        ));
  }
}
