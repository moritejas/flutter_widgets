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
      appBar: AppBar(
        title: const Text('Checkbox Group'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Options:',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Build the checkbox list with additional properties
            ..._options.map((option) {
              return CheckboxListTile(
                title: Text(
                  option,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                value: _selectedOptions.contains(option),
                activeColor: Colors.teal, // Color when checked
                checkColor: Colors.white, // Check mark color
                tileColor: Colors.teal[50], // Background color of the tile
                selected: _selectedOptions.contains(option),
                selectedTileColor: Colors.teal[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 4.0), // Padding inside the tile
                controlAffinity:
                ListTileControlAffinity.leading, // Position of checkbox
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
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, // Button background color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 12.0), // Button padding
                ),
                onPressed: () {
                  // Show selected options
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Selected Options'),
                        content: Text(
                          _selectedOptions.isNotEmpty
                              ? _selectedOptions.join(', ')
                              : 'No options selected',
                          style: const TextStyle(fontSize: 18),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'OK',
                              style: TextStyle(color: Colors.teal),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  'Show Selected Options',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
