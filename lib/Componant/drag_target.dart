import 'package:flutter/material.dart';

class DragTargetComponent extends StatelessWidget {
  const DragTargetComponent({super.key});

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
