import 'package:flutter/material.dart';

class WrapComponent extends StatelessWidget {
  const WrapComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Example'),
      ),
      body: Wrap(
        direction: Axis.horizontal,          // Direction of the wrap layout (horizontal or vertical)
        alignment: WrapAlignment.start,      // Horizontal alignment of children within the wrap
        spacing: 10.0,                       // Space between items
        runAlignment: WrapAlignment.start,   // Vertical alignment of each run (row or column)
        runSpacing: 10.0,                    // Space between rows or columns
        crossAxisAlignment: WrapCrossAlignment.start,  // Vertical alignment of children within each run
        textDirection: TextDirection.ltr,    // Text direction (ltr or rtl)
        verticalDirection: VerticalDirection.down, // Vertical direction of the wrap (down or up)
        clipBehavior: Clip.none,             // Whether to clip the content (none, hardEdge, antiAlias, etc.)
        children: <Widget>[
          for (int i = 1; i <= 15; i++)
            Container(
              color: Colors.teal,
              height: 100,
              width: 100,
              child: Center(
                child: Text(
                  "item $i",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
