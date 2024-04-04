import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/dashboard/dashboard_controller.dart';

class TabCScreen extends StatelessWidget {
  const TabCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => Get.find<DashBaordController>().changeTab(1),
        child: const Text(
          "Tab 2",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
