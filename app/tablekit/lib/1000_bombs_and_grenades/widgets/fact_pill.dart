import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablekit/1000_bombs_and_grenades/models/card_data.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class FactPill extends StatelessWidget {
  final CardFact fact;

  const FactPill({super.key, required this.fact});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: fact.backgroundColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: fact.onBackgroundColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              fact.text(l10n),
              style: TextStyle(
                color: fact.onBackgroundColor,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                fontFamily: GoogleFonts.fredoka().fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
