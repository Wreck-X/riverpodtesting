import 'package:flutter/material.dart';
import 'package:riverpodstuff/views/test_view.dart';
import '../routing/route_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.test:
        return MaterialPageRoute(builder: (_) => const TestView());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text("No Route Defined")),
          );
        });
    }
  }
}
