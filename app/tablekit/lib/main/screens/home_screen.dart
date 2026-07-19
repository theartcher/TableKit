import 'package:flutter/material.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';
import 'package:tablekit/main/widgets/game_tile.dart';
import 'package:tablekit/main/widgets/header.dart';
import 'package:tablekit/main/widgets/more-games-footer.dart';

class HomeScreen extends StatelessWidget {
  final Locale locale;
  final ValueChanged<Locale> onLocaleChanged;

  const HomeScreen({
    super.key,
    required this.locale,
    required this.onLocaleChanged,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final gameTileData = [
      {
        'title': l10n.armadilloTitle,
        'textColor': const Color(0xFFC27803),
        'containerColor': const Color(0xFFE8DCC4),
      },
      {
        'title': l10n.thousandBombsTitle,
        'textColor': const Color(0xFFFFFFFF),
        'containerColor': const Color(0xFF2C578F),
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF7F4F0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(locale: locale, onLocaleChanged: onLocaleChanged),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  itemCount: gameTileData.length + 1,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    if (index == gameTileData.length) {
                      return const MoreGamesFooter();
                    }

                    final gameData = gameTileData[index];

                    return GameTile(
                      gameData['title'] as String,
                      gameData['textColor'] as Color,
                      gameData['containerColor'] as Color,
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
