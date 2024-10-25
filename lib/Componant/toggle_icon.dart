import 'package:flutter/material.dart';

class ToggleIconComponent extends StatefulWidget {
  const ToggleIconComponent({super.key});

  @override
  _ToggleIconComponentState createState() => _ToggleIconComponentState();
}

class _ToggleIconComponentState extends State<ToggleIconComponent> {
  bool isFavorite = false;

  void toggleIcon() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: isFavorite ? Colors.red : Colors.grey,
      ),
      onPressed: toggleIcon,
      iconSize: 40,
    );
  }
}
