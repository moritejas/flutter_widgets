import 'package:flutter/material.dart';

class GridViewComponent extends StatelessWidget {
  const GridViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,        // Number of columns
          crossAxisSpacing: 10.0,    // Horizontal space between items
          mainAxisSpacing: 10.0,     // Vertical space between items
          childAspectRatio: 1.0,     // Width/height ratio of items
        ),
        padding: const EdgeInsets.all(10.0), // Padding around the grid
        scrollDirection: Axis.vertical, // Scroll direction (vertical/horizontal)
        reverse: false,              // Reverse the scroll direction
        primary: true,               // Whether this is the primary scroll view
        physics: const BouncingScrollPhysics(), // Scroll behavior (physics)
        shrinkWrap: false,           // Whether the GridView should take only as much space as needed
        addAutomaticKeepAlives: true, // Whether the children should have keep-alive
        addRepaintBoundaries: true,   // Whether the children should have repaint boundaries
        addSemanticIndexes: true,     // Whether to add semantic indexes for accessibility
        cacheExtent: 100.0,          // How far ahead to cache items
        clipBehavior: Clip.hardEdge, // Clip behavior for items outside the bounds
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag, // Dismiss keyboard on drag
        semanticChildCount: 4,       // Semantic count of children for accessibility
        restorationId: 'grid_view',  // Restoration ID to preserve state across restarts
        children: [
          Container(
            color: Colors.red,
            child: const Center(
              child: Text('Item 1', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Item 2', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('Item 3', style: TextStyle(color: Colors.white)),
            ),
          ),
          Container(
            color: Colors.orange,
            child: const Center(
              child: Text('Item 4', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
