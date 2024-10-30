import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MardownComponent extends StatelessWidget {
  const MardownComponent({super.key});
  final String markdownText = """
# Flutter Markdown Example

This is a simple example to show how to use **Markdown** in Flutter.

## Features
- **Bold Text**
- *Italic Text*
- [Link](https://flutter.dev)

### List Example
1. Item 1
2. Item 2
   - Sub-item

> Blockquotes are also supported!

Images:
![Flutter](https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png)

    """;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SafeArea(
        /// Add this Dependencies (flutter_markdown: ^0.7.4+1)
        child: MarkdownBody(
          data:
          markdownText,
          // '''# Header 1\n## Header 2\n### Header 3\n\n*This text will be italic*\n\n**This text will be bold**''',
          selectable: true,
          // onTapLink: (_, url, __) => launchURL(url!),
        ),
      ),
    );
  }
}
