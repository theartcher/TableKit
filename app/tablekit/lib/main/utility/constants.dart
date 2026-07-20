import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:tablekit/1000_bombs_and_grenades/screens/home_screen.dart'
    as TBAG;
import 'package:tablekit/main/screens/home_screen.dart';

const ROUTE_HOME = "/"; // Router key for the home screen
const ROUTE_TBAG =
    "/TBAG"; // Router key for 'A Thousand Bombs and Grenades' game
const ROUTE_ARMADILLO = "/ARMADILLO"; // Router key for 'Armadillo' game

final GoRouter routerConfig = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: ROUTE_HOME,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: ROUTE_TBAG,
      builder: (BuildContext context, GoRouterState state) {
        return const TBAG.HomeScreen();
      },
    ),
  ],
);
