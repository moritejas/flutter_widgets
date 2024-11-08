import 'package:flutter/material.dart';

class SliderComponent extends StatefulWidget {
  const SliderComponent({super.key});

  @override
  State<SliderComponent> createState() => _SliderComponentState();
}

class _SliderComponentState extends State<SliderComponent> {
  // Variable to track the slider value
  double _sliderValue = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider with All Properties'),
      ),
      body: Center(
        child: Slider(
          value: _sliderValue,                         // Current value of the slider
          onChanged: (double newValue) {
            setState(() {
              _sliderValue = newValue;
            });
          },
          min: 0.0,                                     // Minimum value of the slider
          max: 10.0,                                    // Maximum value of the slider
          divisions: 10,                                // Number of discrete divisions
          label: _sliderValue.toString(),               // Label to show the slider's value
          activeColor: Colors.blue,                     // Color of the active side of the slider
          inactiveColor: Colors.grey,                   // Color of the inactive side of the slider
          thumbColor: Colors.blueAccent,                // Color of the slider thumb
          mouseCursor: SystemMouseCursors.click,        // Mouse cursor when hovering over the slider
          semanticFormatterCallback: (double value) {   // Semantic formatting for accessibility
            return 'Value: ${value.round()}';
          },
          autofocus: true,                              // Automatically focus on the slider
          onChangeStart: (double startValue) {          // Called when the slider interaction starts
            print("Slider started moving: $startValue");
          },
          onChangeEnd: (double endValue) {              // Called when the slider interaction ends
            print("Slider stopped moving: $endValue");
          },
        ),
      ),
    );
  }
}
