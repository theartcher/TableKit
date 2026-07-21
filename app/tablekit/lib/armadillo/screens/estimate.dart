import 'package:flutter/material.dart';
import 'package:tablekit/armadillo/models/dice_matrix.dart';
import 'package:tablekit/armadillo/models/dice_size.dart';
import 'package:tablekit/armadillo/models/dice_type.dart';
import 'package:tablekit/armadillo/stores/estimate_notifier.dart';
import 'package:tablekit/armadillo/utility/constants.dart';
import 'package:tablekit/armadillo/widgets/dice.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class EstimateScreen extends StatelessWidget {
  const EstimateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final store = EstimateNotifier();
    final diceSpacing = defaultSpacing * 4;

    final headerTitleStyle = TextStyle(
      fontSize: defaultDiceFontSize * 0.75,
      color: onSecondaryColor,
      fontFamily: armadilloFontFamily,
    );

    final headerValueStyle = TextStyle(
      fontSize: defaultDiceFontSize,
      color: primaryColor,
      fontFamily: armadilloFontFamily,
    );

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onVerticalDragEnd: (details) {
        final velocity = details.primaryVelocity ?? 0;

        if (velocity > defaultSwipeVelocity) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: ListenableBuilder(
          listenable: store,
          builder: (context, child) {
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: diceSpacing,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: diceSpacing * 1.5,
                      children: [
                        Column(
                          children: [
                            Text(l10n.armMin, style: headerTitleStyle),
                            Text("${store.minRoll}", style: headerValueStyle),
                          ],
                        ),
                        Column(
                          children: [
                            Text(l10n.armAverage, style: headerTitleStyle),
                            Text("${store.avgRoll}", style: headerValueStyle),
                          ],
                        ),
                        Column(
                          children: [
                            Text(l10n.armMax, style: headerTitleStyle),
                            Text("${store.maxRoll}", style: headerValueStyle),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: diceSpacing,
                      children: [
                        Dice(
                          diceType: DiceType.low,
                          size: DiceSize.large,
                          onPress: () =>
                              store.toggleDiceEnabled(DiceIndex.blue1),
                          disabled:
                              !store.selectedDie[DiceIndex.blue1]!.enabled,
                        ),
                        Dice(
                          diceType: DiceType.low,
                          size: DiceSize.large,
                          onPress: () =>
                              store.toggleDiceEnabled(DiceIndex.blue2),
                          disabled:
                              !store.selectedDie[DiceIndex.blue2]!.enabled,
                        ),
                      ],
                    ),
                    Row(
                      spacing: diceSpacing,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Dice(
                          diceType: DiceType.middle,
                          size: DiceSize.large,
                          onPress: () =>
                              store.toggleDiceEnabled(DiceIndex.yellow1),
                          disabled:
                              !store.selectedDie[DiceIndex.yellow1]!.enabled,
                        ),
                        Dice(
                          diceType: DiceType.middle,
                          size: DiceSize.large,
                          onPress: () =>
                              store.toggleDiceEnabled(DiceIndex.yellow2),
                          disabled:
                              !store.selectedDie[DiceIndex.yellow2]!.enabled,
                        ),
                      ],
                    ),
                    Row(
                      spacing: diceSpacing,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Dice(
                          diceType: DiceType.high,
                          size: DiceSize.large,
                          onPress: () =>
                              store.toggleDiceEnabled(DiceIndex.red1),
                          disabled: !store.selectedDie[DiceIndex.red1]!.enabled,
                        ),
                        Dice(
                          diceType: DiceType.high,
                          size: DiceSize.large,
                          onPress: () =>
                              store.toggleDiceEnabled(DiceIndex.red2),
                          disabled: !store.selectedDie[DiceIndex.red2]!.enabled,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
