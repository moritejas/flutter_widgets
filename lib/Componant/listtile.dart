import 'package:flutter/material.dart';

class ListTileComponent extends StatelessWidget {
  const ListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const ListTile(
        title: Text("Name"),
        trailing: Icon(Icons.call),
        leading: Icon(Icons.person),
        subtitle: Text("1122334455"),
      )

    );
  }
}
