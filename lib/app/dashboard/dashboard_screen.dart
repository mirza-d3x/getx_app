import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/dashboard/components/bottom_navigationbar.dart';
import 'package:nested_navigation/app/dashboard/components/internal_navigator.dart';
import 'package:nested_navigation/app/dashboard/dashboard_controller.dart';
import 'package:nested_navigation/app/features/page_1/page_1_routebuilder.dart';
import 'package:nested_navigation/app/features/page_2/page_2_routebuilder.dart';
import 'package:nested_navigation/app/features/page_3/page_3_routebuilder.dart';
import 'package:nested_navigation/app/features/tab_c/tab_c_screen.dart';

class DashBoardScreen extends GetView<DashBaordController> {
  DashBoardScreen({super.key});

  final Map<SelectedTab, GlobalKey<FormState>> navigatorKeys = {
    SelectedTab.tabA: GlobalKey<FormState>(),
    SelectedTab.tabB: GlobalKey<FormState>(),
    SelectedTab.tabC: GlobalKey<FormState>(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (controller.selectedTab) {
          case SelectedTab.tabA:
            return InternalNavigator(
              navigatorKey: navigatorKeys[controller.selectedTab]!,
              initialRoute: InternalNavigatorRoutes.pageA,
              onGenerateRoute: (settings) {
                switch (settings.name) {
                  case InternalNavigatorRoutes.pageA:
                    return MaterialPageRoute(
                        builder: (context) => Page1RouteBuilder(
                            tabName: controller.selectedTab.name));
                  case InternalNavigatorRoutes.pageB:
                    return MaterialPageRoute(
                        builder: (context) => Page2RouteBuilder(
                            tabName: controller.selectedTab.name));
                  case InternalNavigatorRoutes.pageC:
                    return MaterialPageRoute(
                        builder: (context) => Page3RouteBuilder(
                            tabName: controller.selectedTab.name));
                  default:
                    return null;
                }
              },
            );
          case SelectedTab.tabB:
            return InternalNavigator(
              navigatorKey: navigatorKeys[controller.selectedTab]!,
              initialRoute: InternalNavigatorRoutes.pageB,
              onGenerateRoute: (settings) {
                switch (settings.name) {
                  case InternalNavigatorRoutes.pageB:
                    return MaterialPageRoute(
                        builder: (context) => Page2RouteBuilder(
                            tabName: controller.selectedTab.name));
                  case InternalNavigatorRoutes.pageC:
                    return MaterialPageRoute(
                        builder: (context) => Page3RouteBuilder(
                            tabName: controller.selectedTab.name));
                  default:
                    return null;
                }
              },
            );
          case SelectedTab.tabC:
            return const TabCScreen();
        }
      }),
      bottomNavigationBar: const DashBoardBottomNavigationBar(),
    );
  }
}
