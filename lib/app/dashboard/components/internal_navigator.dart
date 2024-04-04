import 'package:flutter/material.dart';

final class InternalNavigatorRoutes {
  static const String pageA = "/pageA";
  static const String pageB = "/pageB";
  static const String pageC = "/pageC";
}

class InternalNavigator extends StatefulWidget {
  final String initialRoute;
  final GlobalKey<FormState> navigatorKey;
  final Route<dynamic>? Function(RouteSettings)? onGenerateRoute;
  const InternalNavigator(
      {required this.initialRoute,
      required this.onGenerateRoute,
      required this.navigatorKey,
      super.key});

  @override
  State<InternalNavigator> createState() => _InternalNavigatorState();
}

class _InternalNavigatorState extends State<InternalNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: widget.navigatorKey,
        initialRoute: widget.initialRoute,
        onGenerateRoute: widget.onGenerateRoute);
  }
}

final class InternalNavigationService {
  static void openPageARoute(BuildContext context) {
    Navigator.of(context).pushNamed(InternalNavigatorRoutes.pageA);
  }

  static void openPageBRoute(BuildContext context) {
    Navigator.of(context).pushNamed(InternalNavigatorRoutes.pageB);
  }

  static void openPageCRoute(BuildContext context) {
    Navigator.of(context).pushNamed(InternalNavigatorRoutes.pageC);
  }
}
