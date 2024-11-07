import 'package:flutter/material.dart';

class CounterButtonComponent extends StatefulWidget {
  final String title; // Title above the counter
  final TextStyle textStyle; // Text style for the counter display
  final Color incrementColor; // Color for the increment button
  final Color decrementColor; // Color for the decrement button
  final int initialValue; // Initial counter value

  const CounterButtonComponent({
    Key? key,
    this.title = 'Counter',
    this.textStyle = const TextStyle(fontSize: 24.0),
    this.incrementColor = Colors.green,
    this.decrementColor = Colors.red,
    this.initialValue = 0,
  }) : super(key: key);

  @override
  State<CounterButtonComponent> createState() => _CounterButtonComponentState();
}

class _CounterButtonComponentState extends State<CounterButtonComponent> {
  // Variable to track the counter value
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue; // Set initial counter value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: widget.textStyle,
            ),
            const SizedBox(height: 10),
            Text(
              'Counter: $_counter',
              style: widget.textStyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.decrementColor, // Set button color
                  ),
                  onPressed: () {
                    setState(() {
                      _counter--; // Decrement the counter
                    });
                  },
                  child: const Text('- Decrement'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.incrementColor, // Set button color
                  ),
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
