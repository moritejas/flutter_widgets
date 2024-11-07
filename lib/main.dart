import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'Homepage/homepage.dart';
import 'Component/Flex/flex.dart';
import 'Component/Flippable Card/flippable_card.dart';
import 'Component/Form Validation/form_validation.dart';
import 'Component/Grid View/grid_view.dart';
import 'Component/Image/image.dart';
import 'Component/Index Stack/index_stack.dart';
import 'Component/Language Selector/language_selector.dart';
import 'Component/List Tile/listtile.dart';
import 'Component/List View/list_view.dart';


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
      home: ListViewComponent(),
    );
  }
}
