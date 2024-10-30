import 'package:flutter/material.dart';

class ListViewComponent extends StatefulWidget {
   const ListViewComponent({super.key});

  @override
  State<ListViewComponent> createState() => _ListViewComponentState();
}

class _ListViewComponentState extends State<ListViewComponent> {
  List<String> myLists =
    ["Item 1","Item 2","Item 3","Item 4","Item 5","Item 6","Item 7","Item 8",
    "Item 9","Item 10","Item 11","Item 12","Item 13","Item 14","Item 15","Item 16",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ListView.builder(
        itemCount: myLists.length,
          itemBuilder: (context, index ){
        return Text(myLists[index]);
      })
    );
  }
}
