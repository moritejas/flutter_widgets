import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationComponent extends StatelessWidget {
  const LottieAnimationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://lottie.host/2498d03a-d775-4d85-8b19-bba628542fe7/Tp1aSFKrW9.json', // Local asset file
          width: 200,
          height: 200,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
