import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlippableCardComponent extends StatelessWidget {
  const FlippableCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SafeArea(
        top: true,
        child: FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.HORIZONTAL,
          speed: 400,
          front: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: const Align(
              alignment: AlignmentDirectional(0, 0),
              child: Text(
                'Front',
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  letterSpacing: 0.0,
                ),
              ),
            ),
          ),
          back: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: const Align(
              alignment: AlignmentDirectional(0, 0),
              child: Text(
                'Back',
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  letterSpacing: 0.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
