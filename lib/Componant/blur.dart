import 'dart:ui';

import 'package:flutter/material.dart';

class BlurComponent extends StatelessWidget {
  const BlurComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Ensure the stack fills the screen
        children:[
          // Background image
          Image.network(
            "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
            fit: BoxFit.cover,
          ),
          // Blurred overlay
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: 300,
                  height:200,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20.0), // Match ClipRRect
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Blurred Text Overlay',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}