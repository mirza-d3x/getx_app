import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/features/page_1/page_1_controller.dart';
import 'package:nested_navigation/app/widgets/appbar.dart';

class Page1Screen extends GetView<Page1Controller> {
  final String tabName;
  const Page1Screen({required this.tabName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const InternalAppBar(title: "Page1"),
      body: Center(
        child: ElevatedButton(
          onPressed: () => controller.openPageBScreen(context),
          child: const Text(
            "Page 2",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
