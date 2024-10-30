import 'package:flutter/material.dart';

class DragTargetComponent extends StatefulWidget {
  const DragTargetComponent({super.key});

  @override
  State<DragTargetComponent> createState() => _DragTargetComponentState();
}

class _DragTargetComponentState extends State<DragTargetComponent> {
  Color targetColor  = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DragTarget"),
      ),
      body: Center(
        child: DragTarget<Color>(
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
      ),
    );
  }
}
