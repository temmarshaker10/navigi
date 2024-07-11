import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _isSwitched = false;
  String? activeText;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _isSwitched,
      onChanged: (value) {
        setState(() {
          _isSwitched = value;
        });
      },
      activeTrackColor: Colors.green,
      activeColor: Colors.green,
      inactiveTrackColor: Colors.red,
      inactiveThumbColor: Colors.red,
    );
  }
}
