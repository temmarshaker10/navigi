import 'package:flutter/material.dart';
import 'package:navigi/cv_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProfilePage(
      phoneNumber: "0660505946",
      username: 'Morad',
      locationState: 'Hassi Messaoud',
      locationMunicipal: '',
      level: 'Graduate of Petrogat Institute',
      services: ['Service 1', 'Service 2'],
    );
  }
}
