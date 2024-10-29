import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodeComponent extends StatelessWidget {
  const BarcodeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      /// Add this Dependencies (barcode_widget: ^2.0.4)

      body: BarcodeWidget(
        barcode: Barcode.code128(),
        data: 'Hello Flutters',
        width: 200,
        height: 200,
      ),
    );
  }
}