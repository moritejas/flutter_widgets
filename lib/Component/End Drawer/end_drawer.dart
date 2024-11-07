import 'package:flutter/material.dart';

class EndDrawerComponent extends StatelessWidget {
  const EndDrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        elevation: 16,
        child: Column(
          children: [
            ListTile(
              title: const Text("Item 1"),
            ),
            Divider(
              height: 40.0,         // Total height occupied by the divider
              thickness: 2.0,       // Thickness of the divider line
              indent: 20.0,         // Space from the leading edge
              endIndent: 20.0,      // Space from the trailing edge
              color: Colors.blue,   // Color of the divider
            ),
            ListTile(
              title: const Text("Item 2"),
            ),
            Divider(
              height: 30.0,
              thickness: 1.5,
              indent: 15.0,
              endIndent: 15.0,
              color: Colors.red,
            ),
            ListTile(
              title: const Text("Item 3"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("End Drawer with Divider"),
      ),
      body: const Center(
        child: Text("Open the end drawer to see dividers"),
      ),
    );
  }
}
