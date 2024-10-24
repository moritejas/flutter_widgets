// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class SwipeableStackComponent extends StatefulWidget {
  const SwipeableStackComponent({super.key});

  @override
  State<SwipeableStackComponent> createState() => _SwipeableStackComponentState();
}

class _SwipeableStackComponentState extends State<SwipeableStackComponent> {
  final SwipeableCardSectionController  _cardController = SwipeableCardSectionController ();
  int counter = 4; // Start from 4 because we already have 3 cards

  final List<String> images = [
    'https://picsum.photos/id/1016/400/300',
    'https://picsum.photos/id/1011/400/300',
    'https://picsum.photos/id/1012/400/300',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swipeable Stack"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SwipeableCardsSection(
            cardController: _cardController,
            context: context,
            // Create a list of card widgets
            items: [
              for (int i = 0; i < images.length; i++)
                CardView(
                  text: "Card ${i + 1}",
                  imageUrl: images[i], // Pass the image URL if needed
                ),
            ],
            onCardSwiped: (dir, index, widget) {
              // Add the next card if we haven't reached the limit
              if (counter <= 3) {
                _cardController.addItem(CardView(text: "Card $counter"));
                counter++;
              }

              // Log swipe direction
              if (dir == Direction.left) {
                print('onDisliked ${(widget as CardView).text} $index');
              } else if (dir == Direction.right) {
                print('onLiked ${(widget as CardView).text} $index');
              } else if (dir == Direction.up) {
                print('onUp ${(widget as CardView).text} $index');
              } else if (dir == Direction.down) {
                print('onDown ${(widget as CardView).text} $index');
              }
            },
            enableSwipeUp: true,
            enableSwipeDown: true,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  child: const Icon(Icons.chevron_left),
                  onPressed: () => _cardController.triggerSwipeLeft(),
                ),
                FloatingActionButton(
                  child: const Icon(Icons.chevron_right),
                  onPressed: () => _cardController.triggerSwipeRight(),
                ),
                FloatingActionButton(
                  child: const Icon(Icons.arrow_upward),
                  onPressed: () => _cardController.triggerSwipeUp(),
                ),
                FloatingActionButton(
                  child: const Icon(Icons.arrow_downward),
                  onPressed: () => _cardController.triggerSwipeDown(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardView extends StatelessWidget {
  final String text;
  final String? imageUrl;

  const CardView({required this.text, this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (imageUrl != null)
            Image.network(imageUrl!),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(text, style: const TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
