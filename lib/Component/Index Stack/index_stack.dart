import 'package:flutter/material.dart';

class IndexedTagComponent extends StatefulWidget {
  const IndexedTagComponent({Key? key}) : super(key: key);

  @override
  _IndexedTagComponentState createState() => _IndexedTagComponentState();
}

class _IndexedTagComponentState extends State<IndexedTagComponent> {
  int _currentIndex = 0;

  // List of widgets representing different pages
  final List<Widget> _pages = [
    Container(
      color: Colors.red,
      child: const Center(child: Text('Page 1')),
    ),
    Container(
      color: Colors.green,
      child: const Center(child: Text('Page 2')),
    ),
    Container(
      color: Colors.blue,
      child: const Center(child: Text('Page 3')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indexed Tag Example'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 4.0,
        titleTextStyle: const TextStyle(fontSize: 20, color: Colors.white),
        toolbarHeight: 60.0,
      ),
      body: IndexedStack(
        index: _currentIndex,
        sizing: StackFit.expand,
        alignment: Alignment.center,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one),
            label: 'Page 1',
            tooltip: 'Go to Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Page 2',
            tooltip: 'Go to Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: 'Page 3',
            tooltip: 'Go to Page 3',
          ),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 8.0,
      ),
    );
  }
}
