import 'package:flutter/material.dart';

class SwitchListTileComponent extends StatefulWidget {
  const SwitchListTileComponent({super.key});

  @override
  State<SwitchListTileComponent> createState() => _SwitchListTileComponentState();
}

class _SwitchListTileComponentState extends State<SwitchListTileComponent> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SwitchListTile Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SwitchListTile(
          title: const Text(
            'Enable Notifications',
            style: TextStyle(fontWeight: FontWeight.bold), // Custom title style
          ),
          subtitle: const Text(
            'Receive updates and alerts',
            style: TextStyle(color: Colors.black), // Custom subtitle style
          ),

          value: isSwitched,
          onChanged: (bool value) {
            setState(() {
              isSwitched = value;
            });
          },

          secondary: const Icon(Icons.notifications),
          activeColor: Colors.white,
          activeTrackColor: Colors.lightGreenAccent,
          inactiveThumbColor: Colors.red,
          inactiveTrackColor: Colors.grey,

          isThreeLine: true,
          dense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Colors.blue),
          ),
          tileColor: Colors.white,
          selectedTileColor: Colors.lightBlueAccent,
          selected: isSwitched,
          visualDensity: VisualDensity.compact,
          autofocus: false,
          enableFeedback: true,
        ),
      ),
    );
  }
}
