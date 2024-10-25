import 'package:flutter/material.dart';

class YoutubeVideoPlayerComponent extends StatelessWidget {
  const YoutubeVideoPlayerComponent({super.key});

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
