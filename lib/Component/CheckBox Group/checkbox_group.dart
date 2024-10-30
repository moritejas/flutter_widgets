import 'package:flutter/material.dart';

class CheckBoxGroupComponent extends StatefulWidget {
  const CheckBoxGroupComponent({super.key});

  @override
  State<CheckBoxGroupComponent> createState() => _CheckBoxGroupComponentState();
}

class _CheckBoxGroupComponentState extends State<CheckBoxGroupComponent> {
  // List of options
  final List<String> _options = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4'
  ];

  // List to track the selected options
  List<String> _selectedOptions = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Select Options:',
            style: TextStyle(fontSize: 24.0),
          ),
          const SizedBox(height: 20),
          // Build the checkbox list
          ..._options.map((option) {
            return CheckboxListTile(
              title: Text(option),
              value: _selectedOptions.contains(option),
              onChanged: (bool? isChecked) {
                setState(() {
                  if (isChecked == true) {
                    _selectedOptions.add(option); // Add to selected options
                  } else {
                    _selectedOptions
                        .remove(option); // Remove from selected options
                  }
                });
              },
            );
          }).toList(),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Show selected options
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Selected Options'),
                    content: Text(_selectedOptions.join(', ')),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: const Text('Show Selected Options'),
          ),
        ],
      ),
    );
  }
}
