import 'package:flutter/material.dart';

class BadgeComponent extends StatelessWidget {
  const BadgeComponent({super.key});

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
