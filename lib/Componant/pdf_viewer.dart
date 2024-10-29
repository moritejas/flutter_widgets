import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PdfViewerComponent extends StatefulWidget {
  const PdfViewerComponent({super.key});

  @override
  State<PdfViewerComponent> createState() => _PdfViewerComponentState();
}

class _PdfViewerComponentState extends State<PdfViewerComponent> {
  late PdfController _pdfController;

  @override
  void initState() {
    super.initState();
    // Initialize the PDF controller with an asset file
    _pdfController = PdfController(
      document: PdfDocument.openAsset('assets/sample.pdf'), // PDF from assets
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
        actions: [
          // Add This Dependencies (pdfx: ^2.8.0)
            // And Add pdf in this path
          /* ( flutter:
                 assets:
                 - assets/sample.pdf)
          */
          IconButton(
            icon: const Icon(Icons.navigate_before),
            onPressed: () {
              _pdfController.previousPage(
                curve: Curves.ease,
                duration: const Duration(milliseconds: 300),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () {
              _pdfController.nextPage(
                curve: Curves.ease,
                duration: const Duration(milliseconds: 300),
              );
            },
          ),
        ],
      ),
      body: PdfView(
        controller: _pdfController,
      ),
    );
  }
}
