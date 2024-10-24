import 'package:flutter/material.dart';

class SpacerComponent extends StatelessWidget {
  const SpacerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Center(
        child: Text("Welcome to Flutter Application "),
      ),
    );
  }
}
