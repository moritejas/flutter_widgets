import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayerComponent extends StatefulWidget {
  const YoutubeVideoPlayerComponent({super.key});

  @override
  State<YoutubeVideoPlayerComponent> createState() => _YoutubeVideoPlayerComponentState();
}

class _YoutubeVideoPlayerComponentState extends State<YoutubeVideoPlayerComponent> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    // Create a YouTube player controller with the video ID
    _controller = YoutubePlayerController(
      initialVideoId: 'dQw4w9WgXcQ', // Replace with your video ID
      flags: const YoutubePlayerFlags(
        autoPlay: true, // Auto play when widget is built
        mute: false,     // Mute video initially
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is removed from the widget tree
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
      body: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
          // Add more UI components below the video player if needed
        ],
      ),
    );
  }
}
