import 'package:flutter/material.dart';

class CheckBoxComponent extends StatefulWidget {
  const CheckBoxComponent({super.key});

  @override
  State<CheckBoxComponent> createState() => _CheckBoxComponentState();
}

class _CheckBoxComponentState extends State<CheckBoxComponent> {
  bool isChecked = false;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value ?? false;
          });
        },
      ),
    );
  }
}
