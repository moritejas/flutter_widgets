import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Component/Sticky Header/sticky_header.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SticktHeaderComponent(),
    );
  }
}
