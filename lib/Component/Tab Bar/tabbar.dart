import 'package:flutter/material.dart';

class TabBarComponent extends StatelessWidget {
  const TabBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Simple TabBar Example'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tab 1'), // First tab
              Tab(text: 'Tab 2'), // Second tab
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                'Content for Tab 1',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Center(
              child: Text(
                'Content for Tab 2',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
