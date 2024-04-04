import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/features/page_3/page_3_controller.dart';
import 'package:nested_navigation/app/features/page_3/page_3_screen.dart';

class Page3RouteBuilder extends StatefulWidget {
  final String tabName;
  const Page3RouteBuilder({required this.tabName, super.key});

  @override
  State<Page3RouteBuilder> createState() => _Page3RouteBuilderState();
}

class _Page3RouteBuilderState extends State<Page3RouteBuilder> {
  @override
  void initState() {
    // Get.lazyPut<Page3Controller>(() => Page3Controller());
    Get.put(Page3Controller());
    super.initState();
  }

  @override
  void deactivate() {
    Get.delete<Page3Controller>();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Page3Screen(tabName: widget.tabName);
  }
}
