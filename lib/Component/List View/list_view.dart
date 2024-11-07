import 'package:flutter/material.dart';

class ListViewComponent extends StatefulWidget {
  const ListViewComponent({super.key});

  @override
  State<ListViewComponent> createState() => _ListViewComponentState();
}

class _ListViewComponentState extends State<ListViewComponent> {
  List<String> myLists = [
    "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8",
    "Item 9", "Item 10", "Item 11", "Item 12", "Item 13", "Item 14", "Item 15", "Item 16",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Example"),
      ),
      body: ListView.builder(
        itemCount: myLists.length, // Total number of items in the list
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(myLists[index]),
          );
        },
        padding: const EdgeInsets.all(8.0), // Space around the ListView
        scrollDirection: Axis.vertical, // Scrolling direction (vertical or horizontal)
        reverse: false, // Reverse the scroll direction if true
        primary: true, // Whether the ListView is the primary scroll widget
        shrinkWrap: false, // If true, sizes ListView to the available space
        physics: const BouncingScrollPhysics(), // Defines the scroll behavior
        itemExtent: 50.0, // Height of each item (useful for fixed-height items)
        cacheExtent: 100.0, // Area around the visible items for preloading
        clipBehavior: Clip.hardEdge, // Defines how content outside the ListView boundary is clipped
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag, // Hides keyboard when scrolling
      ),
    );
  }
}
