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
            Transform(
              transform: Matrix4.identity()..translate(20.0, 0.0),
              origin: Offset(0, 0),
              alignment: Alignment.center,
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
            Transform(
              transform: Matrix4.identity()..rotateZ(0.5), // in radians
              origin: Offset(0, 0),
              alignment: Alignment.center,
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
            Transform(
              transform: Matrix4.identity()..scale(1.5, 1.5),
              origin: Offset(0, 0),
              alignment: Alignment.center,
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
              transform: Matrix4.identity()..setEntry(3, 0, 0.2),
              origin: Offset(0, 0),
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.purple,
                child: const Text(
                  'Skewed',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Combined transformations
            Transform(
              transform: Matrix4.identity()
                ..translate(10.0, 10.0)
                ..rotateZ(0.2)
                ..scale(1.2, 1.2)
                ..setEntry(3, 0, 0.3),
              origin: Offset(0, 0),
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.orange,
                child: const Text(
                  'Combined Transformations',
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
