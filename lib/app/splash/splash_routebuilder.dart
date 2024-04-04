import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/splash/splash_controller.dart';
import 'package:nested_navigation/app/splash/splash_screen.dart';

class SplashRouteBuilder extends StatefulWidget {
  const SplashRouteBuilder({super.key});

  @override
  State<SplashRouteBuilder> createState() => _SplashRouteBuilderState();
}

class _SplashRouteBuilderState extends State<SplashRouteBuilder> {
  @override
  void initState() {
    Get.lazyPut<SplashController>(() => SplashController());
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<SplashController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
