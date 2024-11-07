import 'package:flutter/material.dart';

class IconComponent extends StatelessWidget {
  const IconComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.settings),

          // Divider with all properties
          VerticalDivider(
            color: Colors.black,              // Color of the divider line
            thickness: 2,                     // Thickness of the divider line
            width: 20,                        // Space occupied by the divider itself
            indent: 10,                       // Starting indentation from top
            endIndent: 10,                    // Ending indentation from bottom
          ),

          Icon(Icons.dashboard),

          VerticalDivider(
            color: Colors.red,                // Example of a different color
            thickness: 2,
            width: 20,
            indent: 10,
            endIndent: 10,
          ),

          Icon(Icons.person),

          VerticalDivider(
            color: Colors.blue,               // Example with another color
            thickness: 2,
            width: 20,
            indent: 10,
            endIndent: 10,
          ),

          Icon(Icons.add),
        ],
      ),
    );
  }
}
