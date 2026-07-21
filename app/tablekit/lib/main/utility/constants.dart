import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:go_transitions/go_transitions.dart';
import 'package:tablekit/1000_bombs_and_grenades/screens/details_screen.dart';
import 'package:tablekit/1000_bombs_and_grenades/screens/home_screen.dart'
    as TBAG;

import 'package:tablekit/armadillo/screens/home.dart' as ARMADILLO;
import 'package:tablekit/armadillo/screens/calculate.dart';
import 'package:tablekit/armadillo/screens/estimate.dart';
import 'package:tablekit/armadillo/screens/scoreboard.dart';
import 'package:tablekit/main/screens/home_screen.dart';
import 'package:tablekit/main/screens/not_found_screen.dart';

const ROUTE_HOME = "/";

const ROUTE_TBAG = "/tbag"; // 'Thousand Bombs and Grenades' -> TBAG
const ROUTE_TBAG_DETAILS = "details/:cardId";

const ROUTE_ARMADILLO = "/armadillo";
const ROUTE_CALCULATE = '$ROUTE_ARMADILLO/calculate';
const ROUTE_ESTIMATE = '$ROUTE_ARMADILLO/estimate';
const ROUTE_SCOREBOARD = '$ROUTE_ARMADILLO/scoreboard';

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
      path: ROUTE_ARMADILLO,
      builder: (BuildContext context, GoRouterState state) {
        return const ARMADILLO.HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: ROUTE_CALCULATE,
          pageBuilder: GoTransitions.slide.toBottom.call,
          builder: (BuildContext context, GoRouterState state) {
            return const CalculateScreen();
          },
        ),
        GoRoute(
          path: ROUTE_SCOREBOARD,
          pageBuilder: GoTransitions.slide.toLeft.call,
          builder: (BuildContext context, GoRouterState state) {
            return const ScoreBoardScreen();
          },
        ),
        GoRoute(
          path: ROUTE_ESTIMATE,
          pageBuilder: GoTransitions.slide.toTop.call,
          builder: (BuildContext context, GoRouterState state) {
            return const EstimateScreen();
          },
        ),
      ],
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
