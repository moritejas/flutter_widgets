import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
import 'dart:typed_data';

class SignatureComponent extends StatefulWidget {
  const SignatureComponent({super.key});

  @override
  State<SignatureComponent> createState() => _SignatureComponentState();
}

class _SignatureComponentState extends State<SignatureComponent> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5.0, // Width of the pen strokes
    penColor: Colors.black, // Color of the pen
    exportBackgroundColor: Colors.white, // Background color of exported image
    onDrawStart: () {
      print('Signature drawing started');
    }, // Callback when drawing starts
    onDrawEnd: () {
      print('Signature drawing ended');
    }, // Callback when drawing ends
    exportPenColor: Colors.black, // Color of the pen in exported image
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signature Example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              _controller.clear(); // Clear the signature
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Signature widget with all properties
            Signature(
              controller: _controller,
              width: 300, // Width of the signature canvas
              height: 200, // Height of the signature canvas
              backgroundColor: Colors.grey[200]!, // Canvas background color
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                // Export the signature as an image
                final Uint8List? data = await _controller.toPngBytes();
                if (data != null) {
                  // Show the exported signature
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Your Signature'),
                        content: Image.memory(data), // Display the signature
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: const Text('Save Signature'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller when done
    super.dispose();
  }
}
