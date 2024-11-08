import 'package:flutter/material.dart';

class ToggleIconComponent extends StatefulWidget {
  final IconData activeIcon;
  final IconData inactiveIcon;
  final Color activeColor;
  final Color inactiveColor;
  final double iconSize;
  final bool initialState;
  final ValueChanged<bool>? onToggle;
  final String tooltip;

  const ToggleIconComponent({
    Key? key,
    this.activeIcon = Icons.favorite,
    this.inactiveIcon = Icons.favorite_border,
    this.activeColor = Colors.red,
    this.inactiveColor = Colors.grey,
    this.iconSize = 40.0,
    this.initialState = false,
    this.onToggle,
    this.tooltip = "Toggle Favorite",
  }) : super(key: key);

  @override
  _ToggleIconComponentState createState() => _ToggleIconComponentState();
}

class _ToggleIconComponentState extends State<ToggleIconComponent> {
  late bool isActive;

  @override
  void initState() {
    super.initState();
    isActive = widget.initialState;
  }

  void toggleIcon() {
    setState(() {
      isActive = !isActive;
      if (widget.onToggle != null) {
        widget.onToggle!(isActive);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isActive ? widget.activeIcon : widget.inactiveIcon,
        color: isActive ? widget.activeColor : widget.inactiveColor,
      ),
      onPressed: toggleIcon,
      iconSize: widget.iconSize,
      tooltip: widget.tooltip,
    );
  }
}
