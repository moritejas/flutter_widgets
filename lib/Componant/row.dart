import 'package:flutter/material.dart';

class RowComponent extends StatelessWidget {
  const RowComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Row(children: [
        Text("This is Row Component"),
      ],)
    );
  }
}
