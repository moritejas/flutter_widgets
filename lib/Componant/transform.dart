import 'package:flutter/material.dart';

class TransformComponent extends StatelessWidget {
  const TransformComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Translation
            Transform.translate(
              offset: const Offset(20.0, 0.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.blue,
                child: const Text(
                  'Translated',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Rotation
            Transform.rotate(
              angle: 0.5, // in radians
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.green,
                child: const Text(
                  'Rotated',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Scaling
            Transform.scale(
              scale: 1.5,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.red,
                child: const Text(
                  'Scaled',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Skewing
            Transform(
              transform: Matrix4.skewX(0.3),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.purple,
                child: const Text(
                  'Skewed',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
