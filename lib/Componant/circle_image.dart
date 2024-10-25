import 'package:flutter/material.dart';

class CilrcleImageComponent extends StatelessWidget {
  const CilrcleImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SafeArea(
        top: true,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              'https://picsum.photos/seed/145/600',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
