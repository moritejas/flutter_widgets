import 'package:flutter/material.dart';

/*return Scaffold(
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
    );*/

class DraggableComponent extends StatefulWidget {
  const DraggableComponent({super.key});

  @override
  State<DraggableComponent> createState() => _DraggableComponentState();
}

class _DraggableComponentState extends State<DraggableComponent> {
  Color caughtColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Draggable<Color>(
              data: Colors.blue,
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              childWhenDragging: Container(
                width: 100,
                height: 100,
                color: Colors.blue.withOpacity(0.5),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 50),
            DragTarget<Color>(
              onAccept: (color) {
                setState(() {
                  caughtColor = color;
                });
              },
              builder: (context, acceptedData, rejectedData) => Container(
                width: 200,
                height: 200,
                color: caughtColor,
                child: Center(
                  child: Text(
                    "Drop Here",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
