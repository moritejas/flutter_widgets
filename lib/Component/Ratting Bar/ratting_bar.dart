import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RattingBarComponent extends StatefulWidget {
  const RattingBarComponent({super.key});

  @override
  State<RattingBarComponent> createState() => _RattingBarComponentState();
}

class _RattingBarComponentState extends State<RattingBarComponent> {
  double _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rating: ${_rating.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 20),

            /// Add This Dependencies
            /// flutter_rating_bar: ^4.0.1

            RatingBar.builder(
              initialRating: _rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemSize: 40.0,
              glow: true,
              glowColor: Colors.amber,
              glowRadius: 2.0,
              updateOnDrag: true,
              onRatingUpdate: (rating) {
                setState(() {
                  _rating = rating;
                });
              },
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
