import 'package:flutter/material.dart';

class VideoPlayerComponent extends StatelessWidget {
  const VideoPlayerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: const Card(
          child: Text("This is Card Component"),
        )
    );
  }
}
