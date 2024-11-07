import 'package:flutter/material.dart';

class DragTargetComponent extends StatefulWidget {
  const DragTargetComponent({super.key});

  @override
  State<DragTargetComponent> createState() => _DragTargetComponentState();
}

class _DragTargetComponentState extends State<DragTargetComponent> {
  Color targetColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DragTarget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DragTarget<Color>(
              onAccept: (color) {
                setState(() {
                  targetColor = color;
                });
              },
              onWillAccept: (data) => data is Color,
              builder: (context, acceptedData, rejectedData) => Container(
                width: 200,
                height: 200,
                color: targetColor,
                child: const Center(
                  child: Text(
                    "Drop Here",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add some spacing
            // Divider with all properties
            Divider(
              height: 50, // Height of the divider
              thickness: 2, // Thickness of the divider line
              indent: 20, // Indent from the leading edge
              endIndent: 20, // Indent from the trailing edge
              color: Colors.blue, // Color of the divider line
            ),
          ],
        ),
      ),
    );
  }
}