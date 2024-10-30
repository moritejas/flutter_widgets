import 'package:flutter/material.dart';

class ToolTipComponent extends StatelessWidget {
  const ToolTipComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Tooltip(
          message: "This is an add button",
          child: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Action when button is pressed
            },
            iconSize: 48,
          ),
        ),
      ),
    );
  }
}
