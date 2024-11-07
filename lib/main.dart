import 'package:demo_flutter_flow/Component/Pincode/pincode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Component/Markdown/markdown.dart';
import 'Component/Media Display/media_display.dart';
import 'Component/Mouse Region/mouse_region.dart';
import 'Component/PDF Viewer/pdf_viewer.dart';
import 'Component/Page View/page_view.dart';
import 'Component/Progress Bar/progreass_bar.dart';


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
      home: ProgressBarComponent(),
    );
  }
}
