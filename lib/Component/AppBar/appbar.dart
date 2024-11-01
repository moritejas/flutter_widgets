import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" This is App Bar"),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [IconButton(icon: const Icon(Icons.search),
            onPressed: () {},),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {},),],
        backgroundColor: Colors.blue, // Background color
        foregroundColor: Colors.white, // Text and icon color
        elevation: 4.0, // Shadow elevation
        centerTitle: true, // Center the title
        titleSpacing: 16.0, // Spacing between title and leading/actions
        toolbarHeight: 64.0, // Height of the toolbar
        automaticallyImplyLeading: true, // Automatically add back button
        shadowColor: Colors.grey, // Shadow color
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
        flexibleSpace: Container(
          // Widget behind the toolbar
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlue],),),),
        // bottom: const PreferredSize(
        //   // Widget below the toolbar
        //   preferredSize: Size.fromHeight(48.0),
        //   child: Padding(
        //     padding: EdgeInsets.all(8.0),
        //     child: Text('Bottom Widget'),
        //   ),
        // ),
        systemOverlayStyle: SystemUiOverlayStyle.light, // Status bar style
      ),
    );
  }
}
