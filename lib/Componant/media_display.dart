import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MediaDisplayComponent extends StatefulWidget {
  const MediaDisplayComponent({super.key});

  @override
  State<MediaDisplayComponent> createState() => _MediaDisplayComponentState();
}

class _MediaDisplayComponentState extends State<MediaDisplayComponent> {
  late VideoPlayerController _videoController;
  @override
  void initState() {
    super.initState();
    // Initialize the video controller with a sample video
    _videoController = VideoPlayerController.network(
        'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
    )..initialize().then((_) {
      setState(() {}); // Update the UI once the video is loaded
    });
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Display Image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          // Display Video
          if (_videoController.value.isInitialized)
            AspectRatio(
              aspectRatio: _videoController.value.aspectRatio,
              child: VideoPlayer(_videoController),
            ),
          const SizedBox(height: 20),
          // Play/Pause Button for Video
          ElevatedButton(
            onPressed: () {
              setState(() {
                _videoController.value.isPlaying
                    ? _videoController.pause()
                    : _videoController.play();
              });
            },
            child: Text(
              _videoController.value.isPlaying ? 'Pause Video' : 'Play Video',
            ),
          ),
        ],
      ),
    );
  }
}
