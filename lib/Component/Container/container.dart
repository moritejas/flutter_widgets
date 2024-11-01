import 'package:flutter/material.dart';

class ContainerComponent extends StatelessWidget {
  const ContainerComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.red,
        padding: const EdgeInsets.all(16.0), // Padding around the child
        margin:const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Margin around the container
        alignment: Alignment.center, // Alignment of the child within the container
        decoration: BoxDecoration( // BoxDecoration for advanced styling
          border: Border.all(color: Colors.black, width: 2.0), // Border
          borderRadius: BorderRadius.circular(8.0), // Rounded corners
          boxShadow: [ // Box shadow
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          gradient: const LinearGradient( // Gradient background
            colors: [Colors.blue, Colors.lightBlue],
          ),
        ),
        foregroundDecoration: BoxDecoration( // Decoration on top of the child
          color: Colors.white.withOpacity(0.5), // Semi-transparent white overlay
        ),
        transform: Matrix4.rotationZ(0.1), // Rotation transformation
        clipBehavior: Clip.antiAlias, // How to clip the container's content
        constraints: const BoxConstraints( // Constraints on the container's size
          minWidth: 100.0,
          maxWidth: 300.0,
          minHeight: 50.0,
          maxHeight: 200.0,
        ),
        child: const Text("This is Container Component"),
      )
    );
  }
}
