import 'package:flutter/material.dart';
import 'package:navigi/switch.dart';

class ProfilePage extends StatefulWidget {
  final String phoneNumber;
  final String username;
  final String locationState;
  final String locationMunicipal;
  final String level;
  final List<String> services;

  ProfilePage({
    required this.phoneNumber,
    required this.username,
    required this.locationState,
    required this.locationMunicipal,
    required this.level,
    required this.services,
  });

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            // Profile section
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        'assets/images/man.png'), // Use your image here
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.username,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(widget.phoneNumber),
                      Text(widget.level),
                      Text('services:${widget.services[0]}'),
                      Row(
                        children: [
                          Text('Location: ${widget.locationState}'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          // Diplomas section
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'Diplomas that I have',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: ListView(
                                    children: [
                                      diplomaCard(),
                                      diplomaCard(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Pictures section
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    'Pictures of my work',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: GridView.count(
                                    crossAxisCount: 1,
                                    children: [
                                      workPicture(),
                                      workPicture(),
                                      workPicture(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Footer with icons
                    Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.person, size: 40, color: Colors.white),
                          Icon(Icons.settings, size: 40, color: Colors.white),
                        ],
                      ),
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

  Widget diplomaCard() {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(Icons.insert_drive_file, size: 50),
            SizedBox(height: 10),
            Text('Diploma Title'),
          ],
        ),
      ),
    );
  }

  Widget workPicture() {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Icon(Icons.image, size: 50),
      ),
    );
  }
}
