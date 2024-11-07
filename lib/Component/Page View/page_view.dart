import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PageViewComponent extends StatelessWidget {
  const PageViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView Example'),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal, // Default horizontal scroll direction
        controller: PageController(), // Controller for programmatic control of the PageView
        physics: const BouncingScrollPhysics(), // Scroll physics, e.g., Bouncing or Clamping
        reverse: false, // If true, the PageView will reverse the scroll direction
        onPageChanged: (int page) { // Callback when the page changes
          print("Page changed to: $page");
        },
        pageSnapping: true, // If true, the page will snap to the nearest page on scroll end
        allowImplicitScrolling: false, // If true, allows implicit scrolling (without dragging)
        padEnds: true, // If true, leaves space at the start and end of the PageView
        dragStartBehavior: DragStartBehavior.start, // Determines drag behavior when touching the screen
        restorationId: "pageView",
        children: [
          Container(
            color: Colors.red,
            child: const Center(
              child: Text(
                'Page 1',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                'Page 2',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Page 3',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
        ], // Restoration ID for saving and restoring the page index
      ),
    );
  }
}
