import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayerComponent extends StatefulWidget {
  const YoutubeVideoPlayerComponent({super.key});

  @override
  State<YoutubeVideoPlayerComponent> createState() => _YoutubeVideoPlayerComponentState();
}

class _YoutubeVideoPlayerComponentState extends State<YoutubeVideoPlayerComponent> {
  late YoutubePlayerController _controller;
  final bool isWeb = kIsWeb; // Check if running on web

  @override
  void initState() {
    super.initState();

    // Only initialize the controller on non-web platforms
    if (!isWeb) {
      _controller = YoutubePlayerController(
        initialVideoId: 'dQw4w9WgXcQ', // Replace with your video ID
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
          loop: false, // Optional: Set to true if you want the video to loop
          forceHD: false, // Optional: Set to true to force HD playback
          enableCaption: true, // Enable captions if available
        ),
      );
    }
  }

  @override
  void dispose() {
    // Dispose controller only on non-web platforms
    if (!isWeb) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube Video Player'),
      ),
      body: isWeb
          ? Center(
        child: Text(
          "YouTube player is not supported on the web in this configuration",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      )
          : SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
              onReady: () {
                _controller.addListener(() {
                  // Optional: Add additional listeners for playback events
                });
              },
              bottomActions: [
                CurrentPosition(),
                ProgressBar(
                  isExpanded: true,
                  colors: ProgressBarColors(
                    playedColor: Colors.red,
                    handleColor: Colors.redAccent,
                  ),
                ),
                RemainingDuration(),
                const PlaybackSpeedButton(), // Allows playback speed adjustment
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _controller.play(),
                    child: const Text('Play'),
                  ),
                  ElevatedButton(
                    onPressed: () => _controller.pause(),
                    child: const Text('Pause'),
                  ),
                  ElevatedButton(
                    onPressed: () => _controller.seekTo(Duration(seconds: 0)),
                    child: const Text('Restart'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
