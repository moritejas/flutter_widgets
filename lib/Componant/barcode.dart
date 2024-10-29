import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class BarcodeComponent extends StatelessWidget {
  const BarcodeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BarcodeWidget(
        barcode: Barcode.code128(),
        data: 'Hello Flutter',
        width: 200,
        height: 200,
      ),
    );
  }
}
