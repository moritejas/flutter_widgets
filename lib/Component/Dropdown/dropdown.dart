import 'package:flutter/material.dart';

class DropDownComponent extends StatefulWidget {
  const DropDownComponent({super.key});

  @override
  State<DropDownComponent> createState() => _DropDownComponentState();
}

class _DropDownComponentState extends State<DropDownComponent> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton<String>(
        items: <String>['Option 1', 'Option 2', 'Option 3','Option 4', 'Option 5']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        elevation: 2,
        // borderColor: Colors.transparent,
      ),
    );
  }
}
