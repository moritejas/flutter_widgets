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
        title: const Text("Media Display"),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display Image with various properties
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
                width: 300,
                height: 200,
                fit: BoxFit.cover,
                alignment: Alignment.center, // Align image within the container
                color: Colors.teal.withOpacity(0.5), // Add overlay color
                colorBlendMode: BlendMode.darken, // Blend color with image
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const CircularProgressIndicator(); // Show loading indicator
                },
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.error,
                  size: 100,
                  color: Colors.red,
                ), // Error icon if image fails to load
              ),
            ),
            const SizedBox(height: 20),

            // Display Video with AspectRatio
            if (_videoController.value.isInitialized)
              AspectRatio(
                aspectRatio: _videoController.value.aspectRatio,
                child: VideoPlayer(_videoController),
              ),
            const SizedBox(height: 20),

            // Play/Pause Button for Video
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _videoController.value.isPlaying
                      ? _videoController.pause()
                      : _videoController.play();
                });
              },
              icon: Icon(_videoController.value.isPlaying
                  ? Icons.pause
                  : Icons.play_arrow), // Icon changes based on play/pause state
              label: Text(
                _videoController.value.isPlaying ? 'Pause Video' : 'Play Video',
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.teal, // Text color
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 12.0,
                ), // Button padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Button shape
                ),
              ),
            ),

            // Video Seek Bar
            if (_videoController.value.isInitialized)
              VideoProgressIndicator(
                _videoController,
                allowScrubbing: true, // Allow dragging to seek
                colors: VideoProgressColors(
                  backgroundColor: Colors.grey, // Background color of progress bar
                  bufferedColor: Colors.teal.withOpacity(0.5), // Buffered color
                  playedColor: Colors.teal, // Played portion color
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 24.0,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
