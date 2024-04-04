import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation/app/splash/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.find<SplashController>().openDashBoardScreen(context);
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Splash",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
