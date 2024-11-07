import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  const CardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: Card(
          // child: const Text("This is Card Component"),
          // clipBehavior: Clip.antiAlias, // How to clip the card's content
          color: Colors.blue[100], // Background color
          elevation: 4.0, // Shadow elevation
          shadowColor: Colors.grey, // Shadow color
          shape: RoundedRectangleBorder( // Card shape
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.all(16.0), // Margin around the card
          semanticContainer: true, // Whether the card is a semantic container
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Card Title',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
        )
    );
  }
}
