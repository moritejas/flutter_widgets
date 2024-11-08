import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          "Welcome to Flutter Application",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            color: Colors.black,
            backgroundColor: Colors.transparent,
            letterSpacing: 0.0,
            wordSpacing: 0.0,
            textBaseline: TextBaseline.alphabetic,
            height: 1.0,
            shadows: [
              Shadow(
                color: Colors.black,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
              ),
            ],
            decoration: TextDecoration.none,
            decorationColor: Colors.black,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 1.0,
            overflow: TextOverflow.clip,
          ),
          textAlign: TextAlign.start,
          textDirection: TextDirection.ltr,
          locale: Locale('en', 'US'),
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          semanticsLabel: "Welcome to Flutter Application",
          strutStyle: StrutStyle(
            fontFamily: 'Roboto',
            fontSize: 20.0,
            height: 1.2,
            leading: 0.0,
            forceStrutHeight: true,
          ),
          textScaleFactor: 1.0,
          textWidthBasis: TextWidthBasis.parent,
          textHeightBehavior: TextHeightBehavior(
            applyHeightToFirstAscent: true,
            applyHeightToLastDescent: true,
          ),
          selectionColor: Colors.blue,
        ),
      ),
    );
  }
}
