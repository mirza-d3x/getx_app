import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/dashboard/components/internal_navigator.dart';

final class Page2Controller extends GetxController {
  void openPageCScreen(BuildContext context) {
    InternalNavigationService.openPageCRoute(context);
  }
}
