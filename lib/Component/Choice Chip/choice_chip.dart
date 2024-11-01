import 'package:flutter/material.dart';

class ChoiceChipComponent extends StatefulWidget {
  const ChoiceChipComponent({super.key});

  @override
  State<ChoiceChipComponent> createState() => _ChoiceChipComponentState();
}

class _ChoiceChipComponentState extends State<ChoiceChipComponent> {
  final List<String> fruits = ['Apple', 'Banana', 'Cherry', 'Date'];
  String? selectedFruit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Choice Chip Component")),
      body: Center(
        child: Wrap(
          spacing: 8.0, // Space between chips
          children: fruits.map((fruit) {
            return ChoiceChip(
              label: Text(fruit),
              labelStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              selected: selectedFruit == fruit,
              selectedColor: Colors.green, // Background color when selected
              disabledColor: Colors.grey.shade300, // Color when chip is disabled
              backgroundColor: Colors.blue, // Background color when not selected
              avatar: selectedFruit == fruit
                  ? const Icon(Icons.check, color: Colors.white)
                  : const Icon(Icons.add, color: Colors.white), // Icon/avatar on chip
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: selectedFruit == fruit ? Colors.green : Colors.blue,
                ),
              ),
              elevation: 5, // Shadow effect
              shadowColor: Colors.grey, // Color of shadow
              pressElevation: 8, // Elevation when chip is pressed
              tooltip: 'Tap to select $fruit',
              onSelected: (bool selected) {
                setState(() {
                  selectedFruit = selected ? fruit : null;
                });
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
