import 'package:flutter/material.dart';

class ConditionalBuildComponent extends StatelessWidget {
  const ConditionalBuildComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Text("Conditional Build is Pending")
    );
  }
}
