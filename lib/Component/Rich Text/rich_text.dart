import 'package:flutter/material.dart';

class RichTextComponent extends StatelessWidget {
  const RichTextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
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
          overflow: TextOverflow.ellipsis, // Handles overflow when text is too large
          softWrap: true, // Determines whether the text should wrap when it reaches the edge
          textAlign: TextAlign.center, // Aligns text to the center
          textDirection: TextDirection.ltr, // Defines the text direction (left-to-right)
          locale: Locale('en', 'US'), // Sets the locale for the text rendering
          strutStyle: StrutStyle(
            fontSize: 24, // Defines the base size of strut for alignment
            height: 1.5, // Vertical spacing between lines of text
            leading: 0.5, // Leading of the text
            forceStrutHeight: false, // Whether to apply strut height forcefully
          ),
          textScaleFactor: 1.0, // Controls the scaling of text (adjusts for accessibility)
          maxLines: 2, // Limits the text to a maximum number of lines
        ),
      ),
    );
  }
}
