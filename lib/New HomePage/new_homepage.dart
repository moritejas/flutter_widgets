import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'newhomepage_controller.dart';
import 'open_item_page.dart';

class YaddesPage extends StatelessWidget {
  final YadeeController controller = Get.put(YadeeController());

  YaddesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yadee',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w800, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: Obx(() {

        // Check if classesData is empty
        if (controller.yaddesData.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            children: [
              // List of classes (Havej, Shakbhaji, Lot)
            const SizedBox(height: 30,),
              _buildClassButton(context, 'Havej', controller.yaddesData.first.havej),
              const SizedBox(height: 20),
              _buildClassButton(context, 'Shakbhaji', controller.yaddesData.first.shakbhaji),
              const SizedBox(height: 20),
              _buildClassButton(context, 'Lot', controller.yaddesData.first.lot),
            ],
          );
        }
      }),
    );
  }

  // Helper method to build buttons for each class
  Widget _buildClassButton(BuildContext context, String className, List<String> items) {
    return ElevatedButton(
      onPressed: () {
        // Navigate to new page with the selected class's items
        Get.to(() => YadeeItemsPage(yadeesName: className, items: items));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigoAccent,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        className,
        style: const TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
