import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'Homepage/homepage.dart';
import 'Component/Flex/flex.dart';
import 'Component/Flippable Card/flippable_card.dart';
import 'Component/Form Validation/form_validation.dart';
import 'Component/Grid View/grid_view.dart';
import 'Component/Icon/icon.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: IconComponent(),
    );
  }
}
