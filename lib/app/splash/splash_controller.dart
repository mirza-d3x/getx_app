import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/dashboard/dashboard_routebuilder.dart';

final class SplashController extends GetxController {
  void openDashBoardScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const DashBoardRouteBuilder()));
  }
}
