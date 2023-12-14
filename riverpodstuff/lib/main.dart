import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodstuff/routing/route_names.dart';
import 'package:riverpodstuff/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'RiverPodTests',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, background: Colors.red),
          useMaterial3: true,
        ),
        initialRoute: RouteNames.test,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
