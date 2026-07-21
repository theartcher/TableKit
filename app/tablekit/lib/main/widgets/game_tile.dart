import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class GameTile extends StatelessWidget {
  const GameTile(
    this.text,
    this.textColor,
    this.containerColor,
    this.routeKey, {
    this.isDisabled = false,
    super.key,
  });

  final String text;
  final Color textColor;
  final Color containerColor;
  final bool isDisabled;
  final String routeKey;

  static const disabledOpacity = 0.3;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final snackBar = SnackBar(
      content: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          l10n.disabledGameMessage,
          style: TextStyle(
            fontSize: 20,
            fontFamily: GoogleFonts.anton().fontFamily,
            color: Colors.white,
          ),
        ),
      ),
    );

    return GestureDetector(
      onTap: () {
        if (!isDisabled) {
          context.push(routeKey);
        } else {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 72, 18, 18),
        decoration: BoxDecoration(
          color: isDisabled
              ? containerColor.withValues(alpha: disabledOpacity)
              : containerColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(18, 0, 0, 0),
              blurRadius: 14,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 28,
            fontFamily: GoogleFonts.anton().fontFamily,
            color: isDisabled
                ? textColor.withValues(alpha: disabledOpacity)
                : textColor,
          ),
        ),
      ),
    );
  }
}
