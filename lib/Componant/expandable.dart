import 'package:flutter/material.dart';

class ExpandableComponent extends StatelessWidget {
  const ExpandableComponent({super.key});

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
