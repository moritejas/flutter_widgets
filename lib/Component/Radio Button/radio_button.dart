import 'package:flutter/material.dart';

class RadioButtonComponent extends StatefulWidget {
  const RadioButtonComponent({super.key});

  @override
  State<RadioButtonComponent> createState() => _RadioButtonComponentState();
}

class _RadioButtonComponentState extends State<RadioButtonComponent> {
  // Enum to define the options for the radio buttons
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: const Text('Option 1'),
            leading: Radio<String>(
              value: 'Option 1', // The value that will be assigned to the group when selected
              groupValue: selectedOption, // The currently selected value in the group
              onChanged: (String? value) { // Called when a radio button is selected
                setState(() {
                  selectedOption = value; // Update the selected value
                });
              },
              activeColor: Colors.blue, // Color of the radio button when selected
              toggleable: false, // If true, it can be toggled off, otherwise it stays on
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Tap target size
              focusColor: Colors.green, // Focus color when radio button is focused
              hoverColor: Colors.purple, // Hover color when radio button is hovered
              visualDensity: VisualDensity.adaptivePlatformDensity, // Adjust the visual density based on platform
              splashRadius: 20.0, // The radius of the splash effect when clicked
              mouseCursor: SystemMouseCursors.click, // Mouse cursor on hover
              // You can also add other properties based on your needs
            ),
          ),
          ListTile(
            title: const Text('Option 2'),
            leading: Radio<String>(
              value: 'Option 2',
              groupValue: selectedOption,
              onChanged: (String? value) {
                setState(() {
                  selectedOption = value;
                });
              },
              activeColor: Colors.red,
              toggleable: false,
            ),
          ),
          ListTile(
            title: const Text('Option 3'),
            leading: Radio<String>(
              value: 'Option 3',
              groupValue: selectedOption,
              onChanged: (String? value) {
                setState(() {
                  selectedOption = value;
                });
              },
              activeColor: Colors.green,
              toggleable: false,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Selected: ${selectedOption ?? "None"}',
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
