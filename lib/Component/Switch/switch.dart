import 'package:flutter/material.dart';

class SwitchComponent extends StatefulWidget {
  const SwitchComponent({super.key});

  @override
  State<SwitchComponent> createState() => _SwitchComponentState();
}

class _SwitchComponentState extends State<SwitchComponent> {
  // Boolean variable to track the switch state
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Component Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Turn Notifications ${isSwitched ? "On" : "Off"}',
              style: const TextStyle(fontSize: 16),
            ),
            Switch(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
              // Color for the track when the switch is on
              activeColor: Colors.green,
              // Color of the thumb when the switch is on
              activeTrackColor: Colors.lightGreen,
              // Color for the track when the switch is off
              inactiveThumbColor: Colors.red,
              // Color of the thumb when the switch is off
              inactiveTrackColor: Colors.redAccent,
              // Image for the thumb when the switch is on
              activeThumbImage: const AssetImage('assets/images/thumb_on.png'),
              // Image for the thumb when the switch is off
              inactiveThumbImage: const AssetImage('assets/images/thumb_off.png'),
              // Adds a Material TapTarget to help users know the area to tap
              materialTapTargetSize: MaterialTapTargetSize.padded,
              // A larger or smaller thumb size to improve accessibility
              thumbColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.selected)) {
                    return Colors.blue; // color when active
                  }
                  return Colors.grey; // color when inactive
                },
              ),
              splashRadius: 24.0, // radius of the ripple effect when tapped
            ),
          ],
        ),
      ),
    );
  }
}
