import 'package:flutter/material.dart';

class ColumnComponent extends StatelessWidget {
  const ColumnComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column with All Properties"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Aligns children vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Aligns children horizontally
        mainAxisSize: MainAxisSize.max, // Determines the height taken by the column
        textDirection: TextDirection.ltr, // Direction of text layout
        verticalDirection: VerticalDirection.down, // Direction of vertical layout
        textBaseline: TextBaseline.alphabetic, // Baseline alignment for text

        children: [
          Text("This is Column Component - 1"),
          Text("This is Column Component - 2"),
          Text("This is Column Component - 3"),
          Text("This is Column Component - 4"),
        ],
      ),
    );
  }
}
