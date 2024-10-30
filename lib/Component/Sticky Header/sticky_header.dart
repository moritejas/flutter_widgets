import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class SticktHeaderComponent extends StatelessWidget {
  const SticktHeaderComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sticky Header Example'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return StickyHeader(
            header: Container(
              height: 50.0,
              color: Colors.blueGrey,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Header #$index',
                style: const TextStyle(color: Colors.white),
              ),
            ),
            content: Container(
              color: Colors.grey[200],
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text('List item $i under Header #$index'),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
