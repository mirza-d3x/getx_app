import 'package:flutter/material.dart';
import 'package:nested_navigation/app/splash/splash_routebuilder.dart';

class NestedNavigationRoot extends StatelessWidget {
  const NestedNavigationRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      home: const SplashRouteBuilder(),
    );
  }
}
