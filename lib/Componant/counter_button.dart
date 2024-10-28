import 'package:flutter/material.dart';

class CounterButtonComponent extends StatefulWidget {
  const CounterButtonComponent({super.key});

  @override
  State<CounterButtonComponent> createState() => _CounterButtonComponentState();
}

class _CounterButtonComponentState extends State<CounterButtonComponent> {
  // Variable to track the counter value
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter: $_counter',
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter--; // Decrement the counter
                    });
                  },
                  child: const Text('- Decrement'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++; // Increment the counter
                    });
                  },
                  child: const Text('+ Increment'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
