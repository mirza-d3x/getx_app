import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/dashboard/dashboard_controller.dart';

class DashBoardBottomNavigationBar extends GetView<DashBaordController> {
  const DashBoardBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return BottomNavigationBar(
          currentIndex: controller.selectedTab.index,
          onTap: controller.changeTab,
          backgroundColor: Colors.white,
          selectedLabelStyle: const TextStyle(fontSize: 0),
          unselectedLabelStyle: const TextStyle(fontSize: 0),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                width: 300,
                height: 50,
                color: controller.selectedTab.index == 0
                    ? Colors.black
                    : Colors.grey,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5),
                child: const Text(
                  "TAB 1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 300,
                height: 50,
                color: controller.selectedTab.index == 1
                    ? Colors.black
                    : Colors.grey,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5),
                child: const Text(
                  "TAB 2",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 300,
                height: 50,
                color: controller.selectedTab.index == 2
                    ? Colors.black
                    : Colors.grey,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(5),
                child: const Text(
                  "TAB 3",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              label: "",
            ),
          ],
        );
      },
    );
  }
}
