import 'package:flutter/material.dart';

class GridViewComponent extends StatelessWidget {
  const GridViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        padding: const EdgeInsets.all(10.0), // Padding around the grid
        children: [
          Container(
            color: Colors.red,
            child: const Center(
                child: Text('Item 1', style: TextStyle(color: Colors.white))),
          ),
          // Divider widget with all properties used
          const Divider(
            height: 20.0, // space around the divider line
            thickness: 2.0, // thickness of the line
            color: Colors.grey, // color of the divider line
            indent: 5.0, // empty space to the leading edge of the divider
            endIndent: 5.0, // empty space to the trailing edge of the divider
          ),
          Container(
            color: Colors.blue,
            child: const Center(
                child: Text('Item 2', style: TextStyle(color: Colors.white))),
          ),
          const Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.grey,
            indent: 5.0,
            endIndent: 5.0,
          ),
          Container(
            color: Colors.green,
            child: const Center(
                child: Text('Item 3', style: TextStyle(color: Colors.white))),
          ),
          const Divider(
            height: 20.0,
            thickness: 2.0,
            color: Colors.grey,
            indent: 5.0,
            endIndent: 5.0,
          ),
          Container(
            color: Colors.orange,
            child: const Center(
                child: Text('Item 4', style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    );
  }
}
