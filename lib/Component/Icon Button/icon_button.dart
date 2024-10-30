import 'package:flutter/material.dart';

class IconButtonComponent extends StatelessWidget {
  const IconButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.indigoAccent,
          size: 24,
        ),
        onPressed: () {
          print('IconButton pressed ...');
        },
      ),
    );
  }
}
