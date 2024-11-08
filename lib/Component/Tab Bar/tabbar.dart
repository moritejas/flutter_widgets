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
            bottom: TabBar(
              tabs: const [
                Tab(text: 'Tab 1'), // First tab
                Tab(text: 'Tab 2'), // Second tab
              ],
              isScrollable: false, // Set to true for scrollable tabs
              indicatorColor: Colors.blue, // Color of the indicator line
              indicatorWeight: 4.0, // Thickness of the indicator line
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20), // Padding around indicator
              indicatorSize: TabBarIndicatorSize.tab, // Size of the indicator (Tab or Label)
              labelColor: Colors.green, // Color of the selected tab's text
              unselectedLabelColor: Colors.grey, // Color of the unselected tab's text
              labelStyle: TextStyle(fontWeight: FontWeight.bold), // Style for the label of selected tab
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal), // Style for unselected tab
              mouseCursor: SystemMouseCursors.click, // Mouse cursor style when hovering over the tab
              overlayColor: MaterialStateProperty.all(Colors.transparent), // Color of the overlay
              padding: EdgeInsets.symmetric(vertical: 10), // Padding of the TabBar widget
              automaticIndicatorColorAdjustment: true,
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
