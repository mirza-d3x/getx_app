import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/dashboard/dashboard_controller.dart';
import 'package:nested_navigation/app/dashboard/dashboard_screen.dart';

class DashBoardRouteBuilder extends StatefulWidget {
  const DashBoardRouteBuilder({super.key});

  @override
  State<DashBoardRouteBuilder> createState() => _DashBoardRouteBuilderState();
}

class _DashBoardRouteBuilderState extends State<DashBoardRouteBuilder> {
  @override
  void initState() {
    Get.lazyPut<DashBaordController>(() => DashBaordController());
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<DashBaordController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DashBoardScreen();
  }
}
