import 'package:flutter/material.dart';

class ConditionalBuildComponent extends StatelessWidget {
  const ConditionalBuildComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ElevatedButton(onPressed: (){},
          child: const Text("This is Eleveted Button Component"))
    );
  }
}
