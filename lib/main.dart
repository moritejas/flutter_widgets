import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Component/Sticky Header/sticky_header.dart';
import 'Component/Swipeable Stack/swipeable_stack.dart';
import 'Component/Switch List Tile/switch_list_tile.dart';
import 'Component/Switch/switch.dart';
import 'Component/Tab Bar/tabbar.dart';
import 'Component/Text Field/text_field.dart';
import 'Component/Text/text.dart';
import 'Component/Timer/timer.dart';
import 'Component/Toggle/toggle_icon.dart';
import 'Component/Tooltip/tooltip.dart';
import 'Component/Vertical Divider/vertical_divider.dart';
import 'Component/transform/transform.dart';


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
      home: VerticalDividerComponent (),
    );
  }
}
