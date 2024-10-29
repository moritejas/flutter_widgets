import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class BadgeComponent extends StatelessWidget {
  const BadgeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: badges.Badge(
        badgeContent: Text('3'),
        child: Icon(Icons.settings),
      )),
    );
  }
}
