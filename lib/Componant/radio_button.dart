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
              value: 'Option 1',
              groupValue: selectedOption,
              onChanged: (String? value) {
                setState(() {
                  selectedOption = value;
                });
              },
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
