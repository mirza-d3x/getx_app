import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/features/page_2/page_2_controller.dart';
import 'package:nested_navigation/app/widgets/appbar.dart';

class Page2Screen extends GetView<Page2Controller> {
  final String tabName;
  const Page2Screen({required this.tabName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const InternalAppBar(title: "Page 3"),
      body: Center(
        child: ElevatedButton(
          onPressed: () => controller.openPageCScreen(context),
          child: const Text(
            "Page 3",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
