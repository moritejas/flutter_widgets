// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselComponent extends StatelessWidget {
  const CarouselComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Example'),
      ),
      body: Container(
        width: double.infinity,
        height: 200,
        child: CarouselSlider( /// Add carousel_slider(carousel_slider: ^5.0.0) dependencies
          items: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network('https://picsum.photos/seed/236/600',
                width: 200, height: 200, fit: BoxFit.cover,),),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network('https://picsum.photos/seed/548/600',
                width: 200, height: 200, fit: BoxFit.cover,),),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network('https://picsum.photos/seed/227/600',
                width: 200, height: 200, fit: BoxFit.cover,), ),
          ],
          options: CarouselOptions(initialPage: 1, viewportFraction: 0.5,
            disableCenter: true,enlargeCenterPage: true, enlargeFactor: 0.25,
            enableInfiniteScroll: true,scrollDirection: Axis.horizontal,autoPlay: false,),
        ),
      ),
    );
  }
}
