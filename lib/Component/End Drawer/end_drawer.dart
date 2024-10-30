import 'package:flutter/material.dart';

class EndDrawerComponent extends StatelessWidget {
  const EndDrawerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: Drawer(
        elevation: 16,
      ),
    );
  }
}
