import 'package:flutter/material.dart';

class RowComponent extends StatelessWidget {
  const RowComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Widget Example"),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.start, // Controls the alignment of children horizontally
        crossAxisAlignment: CrossAxisAlignment.center, // Controls the alignment of children vertically
        mainAxisSize: MainAxisSize.max, // Determines the size of the Row in the main axis
        textDirection: TextDirection.ltr, // Controls the direction of text within the Row
        verticalDirection: VerticalDirection.down, // Determines the order in which children are arranged vertically
        textBaseline: TextBaseline.alphabetic, // Baseline for aligning text; required if crossAxisAlignment is set to baseline
        children: [
          Text("This is Row Component"),
          Icon(Icons.star, color: Colors.blue), // Additional example widget
        ],
      ),
    );
  }
}
