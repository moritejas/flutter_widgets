import 'package:flutter/material.dart';

class FABComponent extends StatefulWidget {
  const FABComponent({super.key});

  @override
  State<FABComponent> createState() => _FABComponentState();
}

class _FABComponentState extends State<FABComponent> {
  Color myHexColor = const Color(0xFF382CD5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: myHexColor,
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        elevation: 8,
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 33,
        ),
      ),
    );
  }
}
