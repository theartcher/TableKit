import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:tablekit/1000_bombs_and_grenades/screens/details_screen.dart';
import 'package:tablekit/1000_bombs_and_grenades/screens/home_screen.dart'
    as TBAG;
import 'package:tablekit/main/screens/home_screen.dart';
import 'package:tablekit/main/screens/not_found_screen.dart';

const ROUTE_HOME = "/";
const ROUTE_TBAG = "/TBAG"; // 'Thousand Bombs and Grenades' -> TBAG
const ROUTE_ARMADILLO = "/ARMADILLO";
const ROUTE_TBAG_DETAILS = "details/:cardId";

final GoRouter routerConfig = GoRouter(
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(body: const NotFoundScreen()),
  ),
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
      routes: [
        GoRoute(
          path: ROUTE_TBAG_DETAILS,
          builder: (context, state) =>
              DetailsScreen(cardId: state.pathParameters['cardId']!),
        ),
      ],
    ),
  ],
);
