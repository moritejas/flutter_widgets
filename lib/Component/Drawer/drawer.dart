import 'package:flutter/material.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer with Divider"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(height: 50), // Padding for better appearance
            const Text(
              "This is Drawer",
              style: TextStyle(fontSize: 18),
            ),
            Divider(
              height: 40.0,        // Space around the divider
              thickness: 2.0,      // Thickness of the divider line
              indent: 20.0,        // Space to the leading edge
              endIndent: 20.0,     // Space to the trailing edge
              color: Colors.blue,  // Color of the divider line
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("More content below the divider"),
            ),
          ],
        ),
      ),
    );
  }
}
