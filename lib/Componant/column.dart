import 'package:flutter/material.dart';

class ColumnComponent extends StatelessWidget {
  const ColumnComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Column(
        children: [
          Text("This is Column Component"),
          Text("This is Column Component"),
          Text("This is Column Component"),
          Text("This is Column Component"),
        ],
      )
    );
  }
}
