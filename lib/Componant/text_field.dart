import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: TextField(
       decoration: InputDecoration(
         hintText: "Enter you name",
         labelText: "Name",
       ),
     ),
    );
  }
}
