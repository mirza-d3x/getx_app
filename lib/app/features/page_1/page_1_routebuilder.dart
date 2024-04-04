import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/features/page_1/page_1_controller.dart';
import 'package:nested_navigation/app/features/page_1/page_1_screen.dart';

class Page1RouteBuilder extends StatefulWidget {
  final String tabName;
  const Page1RouteBuilder({required this.tabName, super.key});

  @override
  State<Page1RouteBuilder> createState() => _Page1RouteBuilderState();
}

class _Page1RouteBuilderState extends State<Page1RouteBuilder> {
  @override
  void initState() {
    Get.lazyPut<Page1Controller>(() => Page1Controller());
    super.initState();
  }

  @override
  void deactivate() {
    Get.delete<Page1Controller>();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Page1Screen(tabName: widget.tabName);
  }
}
