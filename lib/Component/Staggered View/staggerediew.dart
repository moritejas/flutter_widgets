import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
class StaggeredViewComponent extends StatelessWidget {
  StaggeredViewComponent({super.key});
  final List<String> imageUrls = [
    'https://picsum.photos/seed/236/600',
    'https://picsum.photos/seed/548/600',
    'https://picsum.photos/seed/227/600',
    'https://picsum.photos/seed/236/600',
    'https://picsum.photos/seed/548/600',
    'https://picsum.photos/seed/227/600',
    'https://picsum.photos/seed/236/600',
    'https://picsum.photos/seed/548/600',
    'https://picsum.photos/seed/227/600',
    'https://picsum.photos/seed/236/600',
    'https://picsum.photos/seed/548/600',
    'https://picsum.photos/seed/227/600',
    'https://picsum.photos/seed/236/600',
    'https://picsum.photos/seed/548/600',
    'https://picsum.photos/seed/227/600',
    // Add more image URLs as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staggered Grid View')),
      body: MasonryGridView.count(
        crossAxisCount: 3, // Number of columns
        mainAxisSpacing: 4, // Spacing between rows
        crossAxisSpacing: 4, // Spacing between columns
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return CachedNetworkImage( // Using CachedNetworkImage for caching
            imageUrl: imageUrls[index],
            fit: BoxFit.cover, // Adjust image fit as needed
          );
        },
      ),
    );
  }
}
