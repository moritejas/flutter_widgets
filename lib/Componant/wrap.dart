import 'package:flutter/material.dart';

class WrapComponent extends StatelessWidget {
  const WrapComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Example'),
      ),
      body: Wrap(
        spacing: 10.0, // space between items
        runSpacing: 10.0, // space between lines
        children: <Widget>[
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 1",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 2",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 3",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 4",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 5",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 6",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 7",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 8",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 9",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 10",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 11",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 12",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 13",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 14",
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
            color: Colors.teal,
            height: 100,
            width: 100,
            child: const Center(
                child: Text(
              "item 15",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ],
      ),
    );
  }
}
