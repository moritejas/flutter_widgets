import 'package:flutter/material.dart';

class SwitchListTileComponent extends StatefulWidget {
  const SwitchListTileComponent({super.key});

  @override
  State<SwitchListTileComponent> createState() => _SwitchListTileComponentState();
}

class _SwitchListTileComponentState extends State<SwitchListTileComponent> {
  // Boolean variable to track the switch state
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwitchListTile(
        title: const Text('Enable Notifications'),
        subtitle: const Text('Receive updates and alerts'),
        value: isSwitched,
        onChanged: (bool value) {
          setState(() {
            isSwitched = value;
          });
        },
        secondary: const Icon(Icons.notifications),
      ),
    );
  }
}
