import 'package:flutter/material.dart';

class VerticalDividerComponent extends StatelessWidget {
  const VerticalDividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: const Center(child: Text('Box 1')),
          ),
          const VerticalDivider(
            color: Colors.black,
            thickness: 2, // Width of the divider
            width: 20,    // Space around the divider
            indent: 10,   // Space at the top
            endIndent: 10, // Space at the bottom
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: const Center(child: Text('Box 2')),
          ),
        ],
      ),
    );
  }
}
