import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tablekit/armadillo/stores/scoreboard_notifier.dart';
import 'package:tablekit/armadillo/utility/constants.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class PlayerScoreCard extends StatelessWidget {
  final int playerIndex;
  final String name;
  final int round1Score;
  final int round2Score;
  final int round3Score;
  final int totalScore;

  const PlayerScoreCard({
    super.key,
    required this.playerIndex,
    required this.name,
    required this.round1Score,
    required this.round2Score,
    required this.round3Score,
    required this.totalScore,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: defaultSpacing * 2,
        vertical: defaultSpacing,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(defaultRounding),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultSpacing * 2,
              vertical: defaultSpacing * 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultRounding),
                topRight: Radius.circular(defaultRounding),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    name.toUpperCase(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: armadilloFontFamily,
                    ),
                  ),
                ),
                const SizedBox(width: defaultSpacing * 2),
                Text(
                  totalScore.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: armadilloFontFamily,
                  ),
                ),
              ],
            ),
          ),
          // Round scores
          _buildRoundRow(
            context,
            round: 1,
            label: l10n.arm1st,
            score: round1Score,
            surface: oddRowSurfaceColor,
            onSurface: onSurfaceColor,
          ),
          _buildRoundRow(
            context,
            round: 2,
            label: l10n.arm2nd,
            score: round2Score,
            surface: evenRowSurfaceColor,
            onSurface: onSurfaceColor,
          ),
          _buildRoundRow(
            context,
            round: 3,
            label: l10n.arm3rd,
            score: round3Score,
            surface: oddRowSurfaceColor,
            onSurface: onSurfaceColor,
            isLastRow: true,
          ),
        ],
      ),
    );
  }

  Widget _buildRoundRow(
    BuildContext context, {
    required int round,
    required String label,
    required int score,
    required Color surface,
    required Color onSurface,
    bool isLastRow = false,
  }) {
    final notifier = context.read<ScoreboardNotifier>();

    void updateBy(int delta) {
      final newScore = score + delta;
      notifier.updateScore(playerIndex, round, newScore < 0 ? 0 : newScore);
    }

    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultSpacing * 2,
          vertical: defaultSpacing,
        ),
        decoration: BoxDecoration(
          borderRadius: isLastRow
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(defaultRounding),
                  bottomRight: Radius.circular(defaultRounding),
                )
              : null,
          color: surface,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                color: onSurface,
                fontSize: 25,
                fontFamily: armadilloFontFamily,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _stepButton(
                  isPositive: false,
                  color: onSurface,
                  onPressed: () => updateBy(-1),
                ),
                SizedBox(
                  width: 36,
                  child: Text(
                    score.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: onSurface,
                      fontSize: 25,
                      fontFamily: armadilloFontFamily,
                    ),
                  ),
                ),
                _stepButton(
                  isPositive: true,
                  color: onSurface,
                  onPressed: () => updateBy(1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _stepButton({
    required bool isPositive,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return IconButton(
      icon: Text(
        isPositive ? '+' : '-',
        style: TextStyle(
          color: color,
          fontSize: 30,
          fontFamily: armadilloFontFamily,
        ),
      ),
      constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
      padding: EdgeInsets.zero,
      splashRadius: 20,
      onPressed: onPressed,
    );
  }
}
