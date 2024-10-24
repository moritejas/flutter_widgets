import 'package:flutter/material.dart';

class StackComponent extends StatelessWidget {
  const StackComponent({super.key});

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
