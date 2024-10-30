import 'package:flutter/material.dart';

class ChoiceChipComponent extends StatefulWidget {
  const ChoiceChipComponent({super.key});

  @override
  State<ChoiceChipComponent> createState() => _ChoiceChipComponentState();
}

class _ChoiceChipComponentState extends State<ChoiceChipComponent> {
  // List of fruits to choose from
  final List<String> fruits = ['Apple', 'Banana', 'Cherry', 'Date'];

  String? selectedFruit;
  // Variable to track the selected fruit
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 8.0, // Space between chips
          children: fruits.map((fruit) {
            return ChoiceChip(
              label: Text(fruit),
              selected: selectedFruit == fruit,
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
