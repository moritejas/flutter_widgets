import 'package:flutter/material.dart';

class StackComponent extends StatelessWidget {
  const StackComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          children: [
            // Background Image
            Image.network(
              'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            // Positioned Text (Top Left)
            const Positioned(
              top: 20,
              left: 20,
              child: Text(
                'Flower',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black54,
                ),
              ),
            ),
            // Positioned Circle Avatar (Bottom Right)
            const Positioned(
              bottom: 20,
              right: 20,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.teal,
                child: Icon(Icons.favorite, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
