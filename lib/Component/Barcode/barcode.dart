import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodeComponent extends StatelessWidget {
  const BarcodeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Center( // Center the barcode on the screen
        child: BarcodeWidget(
          barcode: Barcode.code128(), // Barcode type
          data: 'Hello Flutters', // Data to encode
          width: 200, // Width of the barcode
          height: 200, // Height of the barcode
          color: Colors.black, // Color of the barcode bars
          backgroundColor: Colors.white, // Background color
          drawText: true, // Whether to display text below the barcode
          style: const TextStyle( // Style for the text belowthe barcode
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          errorBuilder: (context, error) => Center( // Widget to display if there's an error
            child: Text('Error: $error'),
          ),
          padding: const EdgeInsets.all(16), // Padding around the barcode
          margin: const EdgeInsets.all(16), // Margin around the barcode widget
        ),
      ),
    );
  }
}