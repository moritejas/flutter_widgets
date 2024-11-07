import 'package:flutter/material.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Person 1'),
          ),
          Divider(
            // Horizontal Divider
            color: Colors.black, // Color of the divider
            thickness: 2, // Thickness of the divider line
            indent: 20, // Space before the divider starts
            endIndent: 20, // Space after the divider ends
            height: 20, // Space above and below the divider (total height of the divider widget)
            // custom divider line (optional)
            // width: double.infinity, // Width of the divider (default is screen width)
            // You can also specify a custom start, end or middle style like:
            // - [Vertical Divider] for vertical lines
            // - [dash] styled dividers using a custom decorator
            // (for other advanced dividers, you might need to use a custom painter)
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Person 2'),
          ),
          Divider(
            color: Colors.grey, // Color of the divider
            thickness: 1, // Thickness of the line
            indent: 20, // Space before the divider
            endIndent: 20, // Space after the divider
            height: 20, // Space above and below the divider
            // width: double.infinity, // Full width divider
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Person 3'),
          ),
        ],
      ),
    );
  }
}
