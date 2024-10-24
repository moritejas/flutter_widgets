import 'package:flutter/material.dart';

class ContainerComponent extends StatelessWidget {
  const ContainerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        child: const Text("This is Container Component") ,
      )
    );
  }
}
