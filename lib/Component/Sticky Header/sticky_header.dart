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
                style: const TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            content: Container(
              color: Colors.grey[200],
              margin: const EdgeInsets.only(bottom: 8.0),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, i) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    leading: Icon(Icons.label, color: Colors.blueGrey),
                    title: Text('List item $i under Header #$index'),
                    subtitle: Text('Details for item $i'),
                    trailing: Icon(Icons.arrow_forward),
                  );
                },
              ),
            ),
            overlapHeaders: true,
            callback: (stuckAmount) {
              print("Header $index stuck: $stuckAmount");
            },
          );
        },
      ),
    );
  }
}
