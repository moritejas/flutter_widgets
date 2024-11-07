import 'package:flutter/material.dart';

class FlexComponent extends StatelessWidget {
  const FlexComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flex Component Demo"),
      ),
      body: Flex(
        direction: Axis.vertical, // This can be Axis.horizontal for row layout
        mainAxisAlignment: MainAxisAlignment.center, // Aligns items along the main axis
        crossAxisAlignment: CrossAxisAlignment.center, // Aligns items along the cross axis
        mainAxisSize: MainAxisSize.max, // Controls the main axis size (max or min)
        textDirection: TextDirection.ltr, // Controls text direction if using text widgets inside
        verticalDirection: VerticalDirection.down, // Direction for vertical Flex (down or up)
        children: <Widget>[
          Container(
            height: 50,
            width: 200,
            color: Colors.red,
            child: const Center(
              child: Text(
                "Item 1",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Item 2",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            color: Colors.green,
            child: const Center(
              child: Text(
                "Item 3",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
