import 'package:flutter/material.dart';

class IconButtonComponent extends StatelessWidget {
  const IconButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Focus(
          onFocusChange: (hasFocus) {
            print('Focus changed: $hasFocus');
          },
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.indigoAccent,
              size: 24,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
            // IconButton properties
            autofocus: false, // Whether the button should focus on screen load
            color: Colors.blue, // Color for icon button (overrides Icon color if set)
            disabledColor: Colors.grey, // Color when onPressed is null
            enableFeedback: true, // Haptic feedback for touch interactions
            focusColor: Colors.yellow, // Color when button is focused
            focusNode: FocusNode(), // Defines the focus behavior
            highlightColor: Colors.red, // Color when button is pressed
            hoverColor: Colors.green, // Color when button is hovered
            iconSize: 30, // Size of the icon
            padding: const EdgeInsets.all(8), // Padding around the icon
            splashColor: Colors.purple, // Ripple color when tapped
            splashRadius: 30, // Radius of the splash effect
            style: IconButton.styleFrom( // Use for additional styling options
              backgroundColor: Colors.lightBlueAccent, // Background color
              padding: const EdgeInsets.all(12), // Additional padding
              shape: RoundedRectangleBorder( // Custom shape for the button
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            visualDensity: VisualDensity.compact, // Density of icon (controls spacing)
            alignment: Alignment.center, // Position of the icon inside the button
            constraints: const BoxConstraints(
              minWidth: 48,
              minHeight: 48,
            ), // Min constraints for button size
          ),
        ),
      ),
    );
  }
}
