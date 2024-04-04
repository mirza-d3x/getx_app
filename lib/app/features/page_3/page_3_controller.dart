import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/model/page3/page_3_model.dart';

final class Page3Controller extends GetxController {
  Rx<Page3Model> page3model = Page3Model(page3: []).obs;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void loadData() async {
    try {
      var response = await rootBundle.loadString('assets/data/page3.json');
      page3model.value = Page3Model.fromJson(jsonDecode(response));
      log(page3model.value.page3.toString());
      update();
    } catch (error, stackTrace) {
      log("Error while reading data", error: error, stackTrace: stackTrace);
      throw const FormatException();
    }
  }
}
