import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'Homepage/homepage.dart';
import 'Component/Credit Card Form/cradit_card_form.dart';
import 'Component/Data Table/data_table.dart';
import 'Component/Divider/divider.dart';
import 'Component/Drag Target/drag_target.dart';
import 'Component/Draggable/draggable.dart';
import 'Component/Drawer/drawer.dart';


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
      home: DrawerComponent(),
    );
  }
}
