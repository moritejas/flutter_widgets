import 'package:flutter/material.dart';

class DraggableComponent extends StatelessWidget {
  const DraggableComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: const SafeArea(
        top: true,
        child: Draggable<String>(
          data: '',
          feedback: Material(
            type: MaterialType.transparency,
            child: Text(
              'Hello World',
              style: TextStyle(
                fontFamily: 'Inter',
                letterSpacing: 0.0,
              ),
            ),
          ),
          child: Text(
            'Hello World',
            style: TextStyle(
              fontFamily: 'Inter',
              letterSpacing: 0.0,
            ),
          ),
        ),
      ),
    );
  }
}
