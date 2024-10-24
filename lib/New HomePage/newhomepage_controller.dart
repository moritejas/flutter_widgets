import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'new_model_class.dart';
import 'package:get/get.dart';

class YadeeController extends GetxController {
  var yaddesData = <Yaddes>[].obs;
  var selectedYaddes =
      ''.obs; // Add this line to keep track of the selected class

  TextEditingController numberController = TextEditingController();
  TextEditingController textsController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    loadSubjectsData();
  }

  Future<void> loadSubjectsData() async {
    try {
      String data = await rootBundle.loadString('assets/yadee_items.json');
      Map<String, dynamic> jsonMap = json.decode(data);
      yaddesData.value = [
        Yaddes.fromJson(jsonMap)
      ]; // Store the data in classesData
    } catch (e) {
      Get.snackbar('Error', 'Failed to Subject load data: $e');
    }
  }
}
