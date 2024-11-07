import 'package:flutter/material.dart';

class CounterButtonComponent extends StatefulWidget {
  final String title; // Title above the counter
  final TextStyle titleTextStyle; // Text style for the title
  final TextStyle counterTextStyle; // Text style for the counter display
  final Color incrementColor; // Color for the increment button
  final Color decrementColor; // Color for the decrement button
  final int initialValue; // Initial counter value
  final double buttonSpacing; // Spacing between increment and decrement buttons
  final double verticalSpacing; // Vertical spacing between elements
  final Function(int)? onCounterChange; // Callback for counter change

  const CounterButtonComponent({
    Key? key,
    this.title = 'Counter',
    this.titleTextStyle = const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    this.counterTextStyle = const TextStyle(fontSize: 24.0),
    this.incrementColor = Colors.green,
    this.decrementColor = Colors.red,
    this.initialValue = 0,
    this.buttonSpacing = 20.0,
    this.verticalSpacing = 10.0,
    this.onCounterChange,
  }) : super(key: key);

  @override
  State<CounterButtonComponent> createState() => _CounterButtonComponentState();
}

class _CounterButtonComponentState extends State<CounterButtonComponent> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      widget.onCounterChange?.call(_counter); // Trigger callback on increment
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      widget.onCounterChange?.call(_counter); // Trigger callback on decrement
    });
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
              style: widget.titleTextStyle,
            ),
            SizedBox(height: widget.verticalSpacing),
            Text(
              'Counter: $_counter',
              style: widget.counterTextStyle,
            ),
            SizedBox(height: widget.verticalSpacing * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.decrementColor,
                  ),
                  onPressed: _decrementCounter,
                  child: const Text('- Decrement'),
                ),
                SizedBox(width: widget.buttonSpacing),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: widget.incrementColor,
                  ),
                  onPressed: _incrementCounter,
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
