import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tablekit/armadillo/stores/scoreboard_notifier.dart';
import 'package:tablekit/armadillo/utility/constants.dart';
import 'package:tablekit/armadillo/widgets/playerscore.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class ScoreBoardScreen extends StatelessWidget {
  const ScoreBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return ChangeNotifierProvider(
      create: (_) => ScoreboardNotifier(),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onHorizontalDragEnd: (details) {
          final velocity = details.primaryVelocity ?? 0;

          if (velocity > defaultSwipeVelocity) {
            Navigator.pop(context);
          }
        },
        child: Scaffold(
          backgroundColor: tertiaryColor,
          body: SafeArea(
            child: Consumer<ScoreboardNotifier>(
              builder: (context, notifier, _) {
                if (notifier.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(color: onTertiaryColor),
                  );
                }

                return Column(
                  children: [
                    Expanded(
                      child: notifier.players.isEmpty
                          ? Center(
                              child: Text(
                                l10n.armNoPlayersYet,
                                style: TextStyle(
                                  color: onTertiaryColor,
                                  fontSize: 18,
                                  fontFamily: armadilloFontFamily,
                                ),
                              ),
                            )
                          : GridView.builder(
                              shrinkWrap: true,
                              itemCount: notifier.players.length,
                              gridDelegate:
                                  SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 700,
                                    mainAxisExtent: 300,
                                    crossAxisSpacing: 16,
                                    mainAxisSpacing: 16,
                                  ),
                              itemBuilder: (BuildContext context, int index) {
                                final player = notifier.players[index];

                                return PlayerScoreCard(
                                  playerIndex: index,
                                  name: player.name,
                                  round1Score: player.round1Score,
                                  round2Score: player.round2Score,
                                  round3Score: player.round3Score,
                                  totalScore: player.totalScore,
                                );
                              },
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(defaultSpacing * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _scoreButton(
                            context,
                            l10n.armAdd,
                            () => _showAddPlayerDialog(context),
                          ),
                          SizedBox(width: defaultSpacing * 2),
                          _scoreButton(
                            context,
                            l10n.armReset,
                            () => _showResetDialog(context),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _showAddPlayerDialog(BuildContext context) {
    final controller = TextEditingController();
    final notifier = context.read<ScoreboardNotifier>();
    final l10n = AppLocalizations.of(context);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          l10n.armAddPlayer,
          style: TextStyle(fontFamily: armadilloFontFamily),
        ),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: l10n.armAddPlayerName,
            hintStyle: TextStyle(fontFamily: armadilloFontFamily),
            labelStyle: TextStyle(fontFamily: armadilloFontFamily),
          ),
          maxLength: maxPlayerNameLength,
          textCapitalization: TextCapitalization.words,
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(
              l10n.armCancel,
              style: TextStyle(
                color: onSecondaryColor,
                fontFamily: armadilloFontFamily,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              if (controller.text.trim().isNotEmpty) {
                notifier.addPlayer(controller.text);
                Navigator.pop(dialogContext);
              }
            },
            child: Text(
              l10n.armAdd,
              style: TextStyle(
                color: onSecondaryColor,
                fontFamily: armadilloFontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showResetDialog(BuildContext context) {
    final notifier = context.read<ScoreboardNotifier>();
    final l10n = AppLocalizations.of(context);

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          l10n.armResetScoreboard,
          style: TextStyle(fontFamily: armadilloFontFamily),
        ),
        content: Text(
          style: TextStyle(
            color: onSecondaryColor.withAlpha(217),
            fontSize: 20,
            fontFamily: armadilloFontFamily,
          ),
          l10n.armResetScoreboardMessage,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            style: TextButton.styleFrom(foregroundColor: onSecondaryColor),
            child: Text(
              l10n.armCancel,
              style: TextStyle(fontFamily: armadilloFontFamily),
            ),
          ),
          TextButton(
            onPressed: () {
              notifier.resetScores();
              Navigator.pop(dialogContext);
            },
            style: TextButton.styleFrom(foregroundColor: onSecondaryColor),
            child: Text(
              l10n.armResetScoresOnly,
              style: TextStyle(fontFamily: armadilloFontFamily),
            ),
          ),
          TextButton(
            onPressed: () {
              notifier.clearAll();
              Navigator.pop(dialogContext);
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text(
              l10n.armResetEverything,
              style: TextStyle(fontFamily: armadilloFontFamily),
            ),
          ),
        ],
      ),
    );
  }

  Widget _scoreButton(
    BuildContext context,
    String label,
    VoidCallback onPressed,
  ) {
    return Expanded(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: onTertiaryColor,
          foregroundColor: onSecondaryColor,
          padding: const EdgeInsets.symmetric(
            horizontal: defaultSpacing * 3,
            vertical: defaultSpacing * 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRounding),
          ),
        ),
        child: Text(
          style: TextStyle(
            fontSize: 20,
            color: onSecondaryColor,
            fontFamily: armadilloFontFamily,
          ),
          label,
        ),
      ),
    );
  }
}
