import 'package:flutter/material.dart';

class RichTextComponent extends StatelessWidget {
  const RichTextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body:Center(
        child: RichText(
          text: const TextSpan(
            text: 'Hello, ',
            style: TextStyle(fontSize: 24, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              TextSpan(
                text: ' Developers!',
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
