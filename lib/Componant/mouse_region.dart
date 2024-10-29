import 'package:flutter/material.dart';

class MouseRegionComponent extends StatefulWidget {
  const MouseRegionComponent({super.key});

  @override
  State<MouseRegionComponent> createState() => _MouseRegionComponentState();
}

class _MouseRegionComponentState extends State<MouseRegionComponent> {

  Color _color = Colors.blue;

  void _onEnter(PointerEvent details) {
    setState(() {
      _color = Colors.green; // Change color when the mouse enters
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _color = Colors.blue; // Reset color when the mouse exits
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: MouseRegion(
          onEnter: _onEnter,
          onExit: _onExit,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 200,
            height: 200,
            color: _color,
            child: const Center(
              child: Text(
                "Hover over me!",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
