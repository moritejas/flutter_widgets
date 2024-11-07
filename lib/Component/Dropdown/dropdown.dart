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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton<String>(
              value: dropdownValue,
              items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5']
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
            ),
            Divider(
              height: 40.0,         // Height of the space around the divider
              thickness: 2.0,       // Thickness of the divider line
              indent: 20.0,         // Space to the leading edge
              endIndent: 20.0,      // Space to the trailing edge
              color: Colors.blue,   // Color of the divider line
            ),
          ],
        ),
      ),
    );
  }
}
