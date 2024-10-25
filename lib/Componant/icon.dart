import 'package:flutter/material.dart';

class IconComponent extends StatelessWidget {
  const IconComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.settings),
          Icon(Icons.dashboard),
          Icon(Icons.person),
          Icon(Icons.add),
        ],
      )
    );
  }
}
