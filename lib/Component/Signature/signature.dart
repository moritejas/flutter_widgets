import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signature/signature.dart';

class SignatureComponent extends StatefulWidget {
  const SignatureComponent({super.key});

  @override
  State<SignatureComponent> createState() => _SignatureComponentState();
}

class _SignatureComponentState extends State<SignatureComponent> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    // exportBackground: true,
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
            // Signature widget
            Signature(
              controller: _controller,
              width: 300,
              height: 200,
              backgroundColor: Colors.grey[200]!,
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
}
