import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tablekit/armadillo/utility/constants.dart';
import 'package:tablekit/main/utility/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    final fontSize = 40.0;

    return Scaffold(
      body: Center(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onHorizontalDragEnd: (details) {
            final velocity = details.primaryVelocity ?? 0;

            if (velocity < -defaultSwipeVelocity) {
              context.go(ROUTE_SCOREBOARD);
            }
          },
          onVerticalDragEnd: (details) {
            final velocity = details.primaryVelocity ?? 0;

            if (velocity > defaultSwipeVelocity) {
              context.go(ROUTE_CALCULATE);
            }

            if (velocity < -defaultSwipeVelocity) {
              context.go(ROUTE_ESTIMATE);
            }
          },
          child: Column(
            children: [
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    context.push(ROUTE_CALCULATE);
                    print('Navigate to $ROUTE_CALCULATE');
                  },
                  child: Container(
                    color: colorTheme.primary,
                    child: Center(
                      child: Text(
                        'Calculate',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: colorTheme.onPrimary,
                          fontSize: fontSize,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => context.go(ROUTE_SCOREBOARD),
                  child: Container(
                    color: colorTheme.tertiary,
                    child: Center(
                      child: Text(
                        'Scoreboard',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: colorTheme.onTertiary,
                          fontSize: fontSize,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => context.go(ROUTE_ESTIMATE),
                  child: Container(
                    color: colorTheme.secondary,
                    child: Center(
                      child: Text(
                        'Estimate',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: colorTheme.onSecondary,
                          fontSize: fontSize,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
