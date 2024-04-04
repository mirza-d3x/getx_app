import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/features/page_3/page_3_controller.dart';
import 'package:nested_navigation/app/widgets/appbar.dart';

class Page3Screen extends GetView<Page3Controller> {
  final String tabName;
  const Page3Screen({required this.tabName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const InternalAppBar(title: "Page 3"),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GetBuilder(
            init: controller,
            builder: (context) {
              return ListView.builder(
                itemCount: controller.page3model.value.page3.length,
                itemBuilder: (BuildContext context, int index) => Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 126, 197, 230),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: Text(controller.page3model.value.page3[index]),
                ),
              );
            }),
      ),
    );
  }
}
