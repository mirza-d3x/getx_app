import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/dashboard/components/internal_navigator.dart';

class Page1Controller extends GetxController {
  void openPageBScreen(BuildContext context) {
    InternalNavigationService.openPageBRoute(context);
  }
}
