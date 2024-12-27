import 'package:flutter/material.dart';
import 'package:flutter_books_api_project/pages/home_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final routes = GoRouter(
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          name: HomePage.routeName,
          path: HomePage.routeName,
          builder: (context, state) => const HomePage(),
        ),
      ],
    );

    return MaterialApp.router(
      title: 'Flutter Books Api Project',
      routerConfig: routes,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
