import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Widget Properties Example"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Image From Assets"),
              Container(
                height: 200,
                width: 200,
                child: Center(
                  child: Image.asset(
                    'assets/images/ironman01.jpg',
                    fit: BoxFit.cover, // Fills the container while maintaining the aspect ratio
                    alignment: Alignment.center, // Position of the image within its container
                    color: Colors.red.withOpacity(0.5), // Color overlay on the image
                    colorBlendMode: BlendMode.colorBurn, // Blending mode for color overlay
                    repeat: ImageRepeat.noRepeat, // Repeat behavior of the image if it's smaller than container
                    matchTextDirection: false, // Flips the image in RTL (right-to-left) layout if true
                    width: 150, // Explicit width, overrides container's constraints
                    height: 150, // Explicit height, overrides container's constraints
                    scale: 1.0, // Scale of the image
                    filterQuality: FilterQuality.high, // Quality of image rendering (low, medium, high)
                    cacheHeight: 100, // Cached image height
                    cacheWidth: 100, // Cached image width
                  ),
                ),
              ),

              const Text("Image From Network"),
              Container(
                height: 200,
                width: 200,
                child: Center(
                  child: Image.network(
                    "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                    color: Colors.white.withOpacity(0.5),
                    colorBlendMode: BlendMode.multiply,
                    repeat: ImageRepeat.noRepeat,
                    matchTextDirection: false,
                    width: 150,
                    height: 150,
                    scale: 1.0,
                    filterQuality: FilterQuality.high,
                    cacheHeight: 100,
                    cacheWidth: 100,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator());
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(child: Icon(Icons.error, color: Colors.red));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
