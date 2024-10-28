import 'package:flutter/material.dart';

class SliderComponent extends StatefulWidget {
  const SliderComponent({super.key});

  @override
  State<SliderComponent> createState() => _SliderComponentState();
}

class _SliderComponentState extends State<SliderComponent> {
  // Variable to track the slider value
  double _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Slider(
        value: _sliderValue,
        min: 0.0,
        max: 10.0,
        onChanged: (double newValue) {
          setState(() {
            _sliderValue = newValue;
          });
        },
      ),
    );
  }
}
