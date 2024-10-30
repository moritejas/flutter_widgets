import 'package:flutter/material.dart';

class IndexedTagComponent extends StatefulWidget {
  const IndexedTagComponent({super.key});

  @override
  _IndexedTagComponentState createState() => _IndexedTagComponentState();
}

class _IndexedTagComponentState extends State<IndexedTagComponent> {
  int _currentIndex = 0;

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
      appBar: AppBar(title: const Text('Indexed Tag Example')),
      body: IndexedStack(
        index: _currentIndex,
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
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}
