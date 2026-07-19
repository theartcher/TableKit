import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class MoreGamesFooter extends StatelessWidget {
  const MoreGamesFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Divider(color: Color(0XFF878787), thickness: 2)),
        Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 8.0),
          child: Text(
            l10n.moreGamesfooter,
            style: TextStyle(
              color: Color(0XFF878787),
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.anton().fontFamily,
            ),
          ),
        ),
        Expanded(child: Divider(color: Color(0XFF878787), thickness: 2)),
      ],
    );
  }
}
