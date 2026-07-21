import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tablekit/armadillo/utility/constants.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';
import 'package:tablekit/main/utility/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final fontSize = 40.0;

    return Scaffold(
      body: Center(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onHorizontalDragEnd: (details) {
            final velocity = details.primaryVelocity ?? 0;

            if (velocity < -defaultSwipeVelocity) {
              context.go('$ROUTE_ARMADILLO/$ROUTE_SCOREBOARD');
            }

            if (velocity > defaultSwipeVelocity) {
              context.go(ROUTE_HOME);
            }
          },
          onVerticalDragEnd: (details) {
            final velocity = details.primaryVelocity ?? 0;

            if (velocity > defaultSwipeVelocity) {
              context.go('$ROUTE_ARMADILLO/$ROUTE_CALCULATE');
            }

            if (velocity < -defaultSwipeVelocity) {
              context.go('$ROUTE_ARMADILLO/$ROUTE_ESTIMATE');
            }
          },
          child: Column(
            children: [
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    context.push('$ROUTE_ARMADILLO/$ROUTE_CALCULATE');
                  },
                  child: Container(
                    color: primaryColor,
                    child: Center(
                      child: Text(
                        l10n.armCalculate,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: onPrimaryColor,
                          fontSize: fontSize,
                          fontFamily: armadilloFontFamily,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => context.go('$ROUTE_ARMADILLO/$ROUTE_SCOREBOARD'),
                  child: Container(
                    color: tertiaryColor,
                    child: Center(
                      child: Text(
                        l10n.armScoreboard,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: onTertiaryColor,
                          fontSize: fontSize,
                          fontFamily: armadilloFontFamily,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => context.go('$ROUTE_ARMADILLO/$ROUTE_ESTIMATE'),
                  child: Container(
                    color: secondaryColor,
                    child: Center(
                      child: Text(
                        l10n.armEstimate,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: onSecondaryColor,
                          fontSize: fontSize,
                          fontFamily: armadilloFontFamily,
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
