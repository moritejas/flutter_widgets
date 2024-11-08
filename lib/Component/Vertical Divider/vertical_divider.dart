import 'package:flutter/material.dart';

class VerticalDividerComponent extends StatelessWidget {
  const VerticalDividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vertical Divider Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First Container
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),

            // VerticalDivider with supported properties
            VerticalDivider(
              width: 40.0,          // The width of the space occupied by the divider
              thickness: 2.0,       // The thickness of the divider line
              color: Colors.black,  // The color of the divider line
              indent: 10.0,         // Space before the divider line starts (top)
              endIndent: 10.0,      // Space after the divider line ends (bottom)
            ),

            // Second Container
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Center(child: Text('Box 2')),
            ),
          ],
        ),
      ),
    );
  }
}
