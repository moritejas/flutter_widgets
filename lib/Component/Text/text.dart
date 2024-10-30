import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  // final String componentName;
  const TextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Welcome to Flutter Application",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
