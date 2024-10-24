import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              const Text("Image From Assets"),
              Container(
                height: 200,
                width: 200,
                child: Center(
                  /*
               Create an assets directory in your project, then add an image to the assets folder.
                After that, add the image path in the "pubspec.yaml" file
                (  assets:
                    - assets/images/ironman01.jpg
                    - assets/images/ironman02.jpg).
                */
                  child: Image.asset(
                    'assets/images/ironman01.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const Text("Image From Network"),
              Container(
                height: 200,
                width: 200,
                child: Center(
                  // Add this Dependencies (image_picker: ^1.1.2)
                  child: Image.network(
                    "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
