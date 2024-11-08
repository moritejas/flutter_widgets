import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableListTileComponent extends StatelessWidget {
  const SlidableListTileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slidable List Tile"),
        centerTitle: true,
      ),
      body: Slidable(
        // Key to uniquely identify this slidable widget
        key: const ValueKey('slidable_list_tile'),

        // Set whether the slidable is enabled
        enabled: true,

        // Direction the Slidable should open
        direction: Axis.horizontal,

        // Auto-close all other slidables when this one is opened
        closeOnScroll: true,

        // Define the start side actions (left swipe)
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.25, // Fraction of the tile width

          // Callback for when the pane is opened
          openThreshold: 0.2,

          // Callback for when the pane is dismissed
          closeThreshold: 0.5,

          children: [
            SlidableAction(
              onPressed: (context) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Edit')),
                );
              },
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Edit',
              autoClose: true, // Automatically close after pressing
              borderRadius: BorderRadius.circular(8), // Rounded corners
              spacing: 8, // Space between actions
              padding: const EdgeInsets.all(8), // Padding within action
            ),
          ],
        ),

        // Define the end side actions (right swipe)
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          extentRatio: 0.25,
          children: [
            SlidableAction(
              onPressed: (context) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Delete')),
                );
              },
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
              autoClose: true,
              borderRadius: BorderRadius.circular(8),
              spacing: 8,
              padding: const EdgeInsets.all(8),
            ),
          ],
        ),

        // Child widget for the Slidable, such as a ListTile
        child: const ListTile(
          title: Text("Name"),
          trailing: Icon(Icons.call),
          leading: Icon(Icons.person),
          subtitle: Text("1122334455"),
        ),
      ),
    );
  }
}
