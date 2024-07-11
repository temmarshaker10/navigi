import 'package:flutter/material.dart';
import 'package:navigi/DropDownButton.dart';
import 'package:navigi/dropdownbuttonmunicipal.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 53, 235, 59),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/images/help-support.png",
                  width: 90,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 400,
              height: 610,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Enter the service",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      )
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
                      DropdownButtonWithIcon(
                        onChanged: (value) {
                          setState(() {
                            var locationState = value;
                          });
                        },
                      ),
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
                      DropdownButtonMunicipal(
                        onChanged: (value) {
                          setState(() {
                            var locationMunicipal = value;
                          });
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 120,
                      ),
                      Container(
                        width: 200,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "search",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0))),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 80, 163, 231),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        child: Text(
                          "Enter",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        onPressed: () {},
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
