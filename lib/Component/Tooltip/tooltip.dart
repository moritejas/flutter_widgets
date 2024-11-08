import 'package:flutter/material.dart';

class ToolTipComponent extends StatelessWidget {
  const ToolTipComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip Example'),
      ),
      body: Center(
        child: Tooltip(
          message: "This is an add button", // Only `message` is used here
          height: 32,
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          textStyle: const TextStyle(color: Colors.white),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8.0),
          ),
          waitDuration: const Duration(seconds: 1),
          showDuration: const Duration(seconds: 2),
          verticalOffset: 20,
          preferBelow: true,
          triggerMode: TooltipTriggerMode.longPress,
          margin: const EdgeInsets.all(8.0),
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
