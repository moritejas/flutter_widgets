import 'package:flutter/material.dart';

class ListTileComponent extends StatelessWidget {
  const ListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListTile Example"),
      ),
      body: ListTile(
        leading: const Icon(Icons.person), // Leading icon on the left
        title: const Text("Name"), // Main title of the ListTile
        subtitle: const Text("1122334455"), // Subtitle under the title
        trailing: const Icon(Icons.call), // Icon at the end (right side)
        isThreeLine: false, // Whether the ListTile has three lines of content
        dense: false, // If true, the tile will be compact
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding around the ListTile
        enabled: true, // If false, the ListTile is disabled and can't be tapped
        selected: false, // If true, it highlights the ListTile (e.g., blue in color)
        onTap: () {
          // Action when the ListTile is tapped
          print("ListTile tapped");
        },
        onLongPress: () {
          // Action when the ListTile is long pressed
          print("ListTile long pressed");
        },
        tileColor: Colors.grey[200], // Background color of the tile
        shape: RoundedRectangleBorder( // Shape of the tile's border
          borderRadius: BorderRadius.circular(12.0),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity, // Density of the widget on different platforms
        horizontalTitleGap: 16.0, // Horizontal space between title and subtitle
      ),
    );
  }
}
