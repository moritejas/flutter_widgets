import 'package:flutter/material.dart';

class CheckBoxListTileComponent extends StatefulWidget {
  const CheckBoxListTileComponent({super.key});

  @override
  State<CheckBoxListTileComponent> createState() => _CheckBoxListTileComponentState();
}

class _CheckBoxListTileComponentState extends State<CheckBoxListTileComponent> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: CheckboxListTile(
       title: const Text('Accept Terms & Conditions'),
       subtitle: const Text('Please accept the terms before proceeding.'),
       value: isChecked,
       onChanged: (bool? value) {
         setState(() {
           isChecked = value ?? false;
         });
       },
       controlAffinity: ListTileControlAffinity.leading, // Checkbox on the left side
     ),
    );
  }
}
