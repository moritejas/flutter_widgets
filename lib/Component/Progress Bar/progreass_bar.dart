import 'package:flutter/material.dart';

class ProgressBarComponent extends StatefulWidget {
  const ProgressBarComponent({super.key});

  @override
  State<ProgressBarComponent> createState() => _ProgressBarComponentState();
}

class _ProgressBarComponentState extends State<ProgressBarComponent> {
  double _progress = 0.6; // 60% progress

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                value: _progress, // Progress value (0.0 to 1.0)
                strokeWidth: 8, // Thickness of the progress line
                backgroundColor: Colors.grey[200], // Background color of the progress circle
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue), // Color of the progress line
                semanticsLabel: 'Progress Indicator', // A label for accessibility
                semanticsValue: '${(_progress * 100).toInt()}%', // Text that represents the progress for screen readers
                // Set the color for both the progress and background for a more customized look
                color: Colors.blue,
                // Set the shape of the progress bar. Default is circular, but it can be customized for a linear look
                // shape: BoxShape.circle, // You can also use this if you want to set specific shapes
              ),
            ),
            Text(
              "${(_progress * 100).toInt()}%",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
