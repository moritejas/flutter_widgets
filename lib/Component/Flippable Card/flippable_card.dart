import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlippableCardComponent extends StatelessWidget {
  const FlippableCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flippable Card"),
      ),
      body: SafeArea(
        top: true,
        child: FlipCard(
          // FlipCard properties explained:

          // Fill determines how the front and back sides of the card are displayed.
          // 'Fill.fillBack' means the back side will completely fill the container's space.
          fill: Fill.fillBack,

          // FlipDirection specifies whether the flip happens horizontally or vertically.
          // HORIZONTAL means the card flips sideways, VERTICAL means it flips up/down.
          direction: FlipDirection.HORIZONTAL,

          // Speed of the flip animation in milliseconds.
          speed: 400,

          // Front side of the card
          front: Container(
            width: 100,  // Width of the front side of the card
            height: 100, // Height of the front side of the card
            decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent,  // Background color of the front side
              borderRadius: BorderRadius.only(  // Border radius for rounded corners
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: const Align(
              alignment: AlignmentDirectional(0, 0),  // Centering the text inside the card
              child: Text(
                'Front',  // Text displayed on the front side
                style: TextStyle(
                  fontFamily: 'Inter',  // Font style
                  color: Colors.white,  // Text color
                  letterSpacing: 0.0,  // Letter spacing for the text
                ),
              ),
            ),
          ),

          // Back side of the card
          back: Container(
            width: 100,  // Width of the back side of the card
            height: 100, // Height of the back side of the card
            decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent,  // Background color of the back side
              borderRadius: BorderRadius.only(  // Border radius for rounded corners
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: const Align(
              alignment: AlignmentDirectional(0, 0),  // Centering the text inside the card
              child: Text(
                'Back',  // Text displayed on the back side
                style: TextStyle(
                  fontFamily: 'Inter',  // Font style
                  color: Colors.white,  // Text color
                  letterSpacing: 0.0,  // Letter spacing for the text
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
