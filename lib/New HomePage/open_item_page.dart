import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'newhomepage_controller.dart';

class YadeeItemsPage extends StatelessWidget {
    final String yadeesName;
    final List<String> items;

    YadeeItemsPage({super.key, required this.yadeesName, required this.items});
    final YadeeController controller = Get.put(YadeeController());
    @override

    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            '$yadeesName Items',
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w800, fontSize: 24),
          ),
          backgroundColor: Colors.indigoAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Items for $yadeesName:',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(
                          items[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                                decoration:
                                    BoxDecoration(border: Border.all(width: 0.5)),
                                width: 60,
                                height: 40,
                                // color: Colors.red,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    hintText: "1",
                                    filled: true, border: InputBorder.none,
                                    // fillColor: Colors.grey,
                                  ),
                                  controller: controller.numberController,
                                )),
                            const SizedBox(width: 5), // spacing between circles
                            Container(
                              width: 60,
                              height: 40,
                              decoration:
                                  BoxDecoration(border: Border.all(width: 0.5)),
                              // color: Colors.greenAccent,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                  hintText: "kg",
                                  filled: true,
                                  border: InputBorder.none,
                                  // fillColor: Colors.grey,
                                ),
                                controller: controller.textsController,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
}
