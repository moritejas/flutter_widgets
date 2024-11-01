import 'package:flutter/material.dart';

class CheckBoxListTileComponent extends StatefulWidget {
  const CheckBoxListTileComponent({super.key});

  @override
  State<CheckBoxListTileComponent> createState() => _CheckBoxListTileComponentState();
}

class _CheckBoxListTileComponentState extends State<CheckBoxListTileComponent> {
  bool isChecked = false;

  @override
  Widget build(BuildContext contsdfext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox List Tile Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CheckboxListTile(
          title: const Text('Accept Terms & Conditions'), // Main title text
          subtitle: const Text('Please accept the terms before proceeding.'), // Subtitle text
          value: isChecked, // Whether the checkbox is checked
          onChanged: (bool? value) {
            setState(() {
              isChecked = value ?? false;
            });
          }, // Action to perform when checkbox is tapped
          controlAffinity: ListTileControlAffinity.leading, // Position of the checkbox
          activeColor: Colors.teal, // Checkbox color when checked
          checkColor: Colors.white, // Checkmark color within the checkbox
          tileColor: Colors.grey[200], // Background color of the tile
          selected: isChecked, // Highlights the tile if selected
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding around the tile content
          secondary: const Icon(Icons.info_outline), // Icon displayed opposite to the checkbox
          selectedTileColor: Colors.lightBlue[100], // Background color when tile is selected
          autofocus: false, // Whether this widget should be focused initially
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ), // Shape of the tile
          visualDensity: VisualDensity.compact, // Adjusts the visual density of the tile
          isThreeLine: false, // Adds more space for a third line of text if true
          dense: true, // Reduces the height of the tile for a denser appearance
        ),
      ),
    );
  }
}
