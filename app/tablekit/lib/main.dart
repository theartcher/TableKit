import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tablekit/main/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

final GoRouter _router = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => HomeScreen())],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
