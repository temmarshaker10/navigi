import 'package:flutter/material.dart';

class DropdownButtonWithIcon extends StatefulWidget {
  final Function(String?) onChanged; // إضافة خاصية onChanged

  DropdownButtonWithIcon({required this.onChanged});

  @override
  _DropdownButtonWithIconState createState() => _DropdownButtonWithIconState();
}

class _DropdownButtonWithIconState extends State<DropdownButtonWithIcon> {
  String? selectedValue;
  List<String> items = [
    'Adrar',
    'Chelf',
    'Laghouat',
    'Umm al-Bawaqi',
    'Batna',
    'Bejaya',
    'Biskra',
    'Bashar',
    'Blida'
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      hint: Row(
        children: [
          Text('State'),
        ],
      ),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue;
        });
        widget.onChanged(newValue); // تحديث القيمة المختارة
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
