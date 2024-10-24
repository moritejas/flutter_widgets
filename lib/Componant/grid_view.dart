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
          Container(
            color: Colors.blue,
            child: const Center(
                child: Text('Item 2', style: TextStyle(color: Colors.white))),
          ),
          Container(
            color: Colors.green,
            child: const Center(
                child: Text('Item 3', style: TextStyle(color: Colors.white))),
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
