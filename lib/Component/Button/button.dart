import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Background color
              foregroundColor: Colors.white, // Text color
              textStyle: const TextStyle(fontSize: 16.0), // Text style
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 12.0), // Padding
              elevation: 4.0, // Shadow elevation
              shadowColor: Colors.grey, // Shadow color
              shape: RoundedRectangleBorder(
                // Button shape
                borderRadius: BorderRadius.circular(8.0),
              ),
              minimumSize: const Size(100.0, 40.0), // Minimum button size
              maximumSize: const Size(200.0, 60.0), // Maximum button size
              side: const BorderSide(color: Colors.black, width: 2.0), // Border
              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Tap target size
              animationDuration:
                  const Duration(milliseconds: 200), // Animation duration
              enableFeedback: true, // Enable haptic feedback
              alignment: Alignment.center, // Alignment of child within button
            ),
            child: const Text("Elevated Button"),
          ),
        ));
  }
}
