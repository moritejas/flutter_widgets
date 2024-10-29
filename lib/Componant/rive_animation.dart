import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveAnimationComponent extends StatefulWidget {
  const RiveAnimationComponent({super.key});

  @override
  State<RiveAnimationComponent> createState() => _RiveAnimationComponentState();
}

class _RiveAnimationComponentState extends State<RiveAnimationComponent> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        SimpleAnimation('Animation1'); // Use your animation's name here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        top: true,
        child: Container(
          width: 150,
          height: 130,

          /// Add this Dependencies (rive: ^0.13.15)
          child: RiveAnimation.network(
            'https://public.rive.app/community/runtime-files/1199-2317-jack-olantern.riv',
            artboard: 'New Artboard',
            fit: BoxFit.cover,
            controllers: [_controller],
          ),
        ),
      ),
    );
  }
}
