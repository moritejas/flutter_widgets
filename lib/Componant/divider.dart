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
            color: Colors.black,
            thickness: 2, // Thickness of the line
            indent: 20, // Space before the divider
            endIndent: 20, // Space after the divider
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Person 2'),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            indent: 20,
            endIndent: 20,
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
