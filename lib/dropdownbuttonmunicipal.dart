import 'package:flutter/material.dart';

class DropdownButtonMunicipal extends StatefulWidget {
  final Function(String?) onChanged; // إضافة خاصية onChanged

  DropdownButtonMunicipal({required this.onChanged});

  @override
  _DropdownButtonWithIconState createState() => _DropdownButtonWithIconState();
}

class _DropdownButtonWithIconState extends State<DropdownButtonMunicipal> {
  String? selectedValue;
  List<String> items = ['Makhadma', 'Ain al-Bayda', 'Sidi Amrane', 'Ruwaisat'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      hint: Row(
        children: [
          Text('Municipal'),
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
