import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableListTileComponent extends StatelessWidget {
  const SlidableListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Slidable(
        /// Import this package (flutter_slidable: ^3.1.1)
        // The child of the Slidable widget
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                // Handle edit action
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Edit')),
                );
              },
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Edit',
            ),
          ],
        ),
        // Define the right side actions
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                // Handle delete action
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Delete')),
                );
              },
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),

        child: const ListTile(
          title: Text("Name"),
          trailing: Icon(Icons.call),
          leading: Icon(Icons.person),
          subtitle: Text("1122334455"),
        )
      ),
    );
  }
}
