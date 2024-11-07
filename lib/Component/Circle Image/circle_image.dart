import 'package:flutter/material.dart';

class CircleImageComponent extends StatelessWidget {
  final double size;
  final String imageUrl;
  final Color borderColor;
  final double borderWidth;
  final BoxFit fit;
  final Widget? placeholder;

  const CircleImageComponent({
    Key? key,
    this.size = 200.0,
    this.imageUrl = 'https://picsum.photos/seed/145/600',
    this.borderColor = Colors.white,
    this.borderWidth = 2.0,
    this.fit = BoxFit.cover,
    this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        top: true,
        child: Center(
          child: Container(
            width: size,
            height: size,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: borderColor, width: borderWidth),
            ),
            child: ClipOval(
              child: Image.network(
                imageUrl,
                fit: fit,
                width: size,
                height: size,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return placeholder ??
                      Icon(Icons.person, size: size * 0.5, color: Colors.grey);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
