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
      value: isChecked, // Whether the checkbox is checked
      onChanged: (bool? newValue) {
        setState(() {
          isChecked = newValue ??
              false; // Update the state when the checkbox is changed
        });
      },
      tristate:
          false, // Whether the checkbox can have a third state (null)activeColor: Colors.blue, // Color when the checkbox is checked
      checkColor: Colors.white, // Color of the checkmark
      fillColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return Colors.grey.shade200; // Color when disabled
        }
        return Colors.transparent; // Default color
      }),
      focusColor: Colors.lightBlue, // Color when the checkbox has focus
      hoverColor:
          Colors.blueGrey, // Color whenthe mouse hovers over the checkbox
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.black12; // Color when pressed
        }
        return null; // Default color
      }),
      splashRadius: 20.0, // Radius of the splash effect when tapped
      materialTapTargetSize: MaterialTapTargetSize.padded, // Tap target size
      visualDensity:
          VisualDensity.comfortable, // Visual density of the checkbox
      autofocus: false, // Whether the checkbox should have autofocus
      shape: RoundedRectangleBorder(
        // Shape of the checkbox
        borderRadius: BorderRadius.circular(4.0),
      ),
      side: const BorderSide(
          color: Colors.grey, width: 1.0), // Border around the checkbox
    ));
  }
}
