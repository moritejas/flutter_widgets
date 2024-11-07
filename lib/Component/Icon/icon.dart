import 'package:flutter/material.dart';

class IconComponent extends StatelessWidget {
  const IconComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.settings,
            size: 40.0, // Size of the icon
            color: Colors.blue, // Color of the icon
            semanticLabel: 'Settings Icon', // Screen reader description
            textDirection: TextDirection.ltr, // Icon orientation
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(2, 2),
                blurRadius: 4,
              ),
            ], // Adds a shadow effect
          ),
          Icon(
            Icons.dashboard,
            size: 40.0,
            color: Colors.green,
            semanticLabel: 'Dashboard Icon',
            textDirection: TextDirection.ltr,
            shadows: [
              Shadow(
                color: Colors.grey,
                offset: Offset(2, 2),
                blurRadius: 4,
              ),
            ],
          ),
          Icon(
            Icons.person,
            size: 40.0,
            color: Colors.red,
            semanticLabel: 'Person Icon',
            textDirection: TextDirection.rtl,
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(1, 1),
                blurRadius: 3,
              ),
            ],
          ),
          Icon(
            Icons.add,
            size: 40.0,
            color: Colors.purple,
            semanticLabel: 'Add Icon',
            textDirection: TextDirection.ltr,
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(2, 2),
                blurRadius: 4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
