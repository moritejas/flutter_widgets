import 'package:flutter/material.dart';

class BarcodeComponent extends StatelessWidget {
  const BarcodeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ElevatedButton(onPressed: (){},
          child: const Text("This is Elevated Button Component"))
    );
  }
}
