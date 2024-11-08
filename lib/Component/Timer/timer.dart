import 'dart:async';
import 'package:flutter/material.dart';

class TimerComponent extends StatefulWidget {
  const TimerComponent({super.key});

  @override
  State<TimerComponent> createState() => _TimerComponentState();
}

class _TimerComponentState extends State<TimerComponent> {
  Timer? _timer;
  int _start = 10; // Initial time in seconds
  bool _isRunning = false; // To track if the timer is running
  bool _isPaused = false; // To track if the timer is paused
  int _initialStart = 10; // Set the initial timer duration here

  void startTimer() {
    setState(() {
      _isRunning = true;
      _isPaused = false;
      _start = _initialStart; // Reset the timer to initial value
    });
    _timer?.cancel(); // Cancel any existing timer
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        _stopTimer(); // Stop the timer when it reaches 0
        _onTimerComplete(); // Callback for timer completion
      }
    });
  }

  void pauseTimer() {
    if (_timer != null && _isRunning) {
      setState(() {
        _isPaused = true;
        _timer?.cancel();
      });
    }
  }

  void resumeTimer() {
    if (_isPaused) {
      setState(() {
        _isPaused = false;
      });
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (_start > 0) {
          setState(() {
            _start--;
          });
        } else {
          _stopTimer();
          _onTimerComplete();
        }
      });
    }
  }

  void _stopTimer() {
    setState(() {
      _isRunning = false;
      _isPaused = false;
      _timer?.cancel();
    });
  }

  void resetTimer() {
    setState(() {
      _isRunning = false;
      _isPaused = false;
      _start = _initialStart; // Reset to initial start value
    });
    _timer?.cancel();
  }

  void _onTimerComplete() {
    // Callback when timer reaches 0
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Timer Complete"),
        content: const Text("The timer has finished!"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel(); // Clean up the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Timer Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_start',
              style: const TextStyle(fontSize: 48),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _isRunning ? null : startTimer,
                  child: const Text("Start"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _isPaused ? resumeTimer : pauseTimer,
                  child: Text(_isPaused ? "Resume" : "Pause"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: resetTimer,
                  child: const Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
