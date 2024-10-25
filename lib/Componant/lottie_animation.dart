import 'package:flutter/material.dart';

class LottieAnimationComponent extends StatelessWidget {
  const LottieAnimationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ElevatedButton(onPressed: (){},
          child: const Text("This is Eleveted Button Component"))
    );
  }
}
