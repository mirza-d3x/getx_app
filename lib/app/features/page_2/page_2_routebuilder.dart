import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/features/page_2/page_2_controller.dart';
import 'package:nested_navigation/app/features/page_2/page_2_screen.dart';

class Page2RouteBuilder extends StatefulWidget {
  final String tabName;
  const Page2RouteBuilder({required this.tabName, super.key});

  @override
  State<Page2RouteBuilder> createState() => _Page2RouteBuilderState();
}

class _Page2RouteBuilderState extends State<Page2RouteBuilder> {
  @override
  void initState() {
    Get.lazyPut<Page2Controller>(() => Page2Controller());
    super.initState();
  }

  @override
  void deactivate() {
    Get.delete<Page2Controller>();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Page2Screen(
      tabName: widget.tabName,
    );
  }
}
