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
      initialPage: 0, // The page to start from
      viewportFraction: 1.0, // Fraction of the screen the page should take
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
        pageSnapping: true,
        reverse: true,
        controller: _pdfController,
        scrollDirection: Axis.vertical, // Page scroll direction (vertical or horizontal)
        // background: Colors.white, // Background color of the PDF view
        onPageChanged: (int page) {
          print('Current page: $page'); // Trigger when page changes
        },
        onDocumentLoaded: (PdfDocument document) {
          print('Document loaded with ${document.pagesCount} pages');
        },
        onDocumentError: (error) {
          print('Error loading document: $error');
        },
        physics: const BouncingScrollPhysics(), // Physics for page scrolling
      ),
    );
  }
}
