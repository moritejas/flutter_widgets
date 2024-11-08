import 'package:flutter/material.dart';

class SpacerComponent extends StatelessWidget {
  const SpacerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: const Center(child: Text(' Box 1 ')),
          ),
          const Spacer(flex: 1), // Adds flexible space with flex = 1
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: const Center(child: Text('Box 2')),
          ),
          const Spacer(flex: 2), // Adds more flexible space with flex = 2
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            child: const Center(child: Text('Box 3')),
          ),
        ],
      ),
    );
  }
}
