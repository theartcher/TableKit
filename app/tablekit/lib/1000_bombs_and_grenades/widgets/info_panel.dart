import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablekit/1000_bombs_and_grenades/models/card_data.dart';
import 'package:tablekit/1000_bombs_and_grenades/utility/constants.dart';
import 'package:tablekit/1000_bombs_and_grenades/widgets/fact_pill.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class InfoPanel extends StatelessWidget {
  final CardData card;
  final bool isDesktop;

  const InfoPanel({super.key, required this.card, required this.isDesktop});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          card.name(l10n),
          style: TextStyle(
            color: onBackgroundColor,
            fontSize: isDesktop ? 56 : 54,
            height: 0.95,
            fontWeight: FontWeight.w800,
            fontFamily: GoogleFonts.fredoka().fontFamily,
          ),
        ),
        const SizedBox(height: 18),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [for (final fact in card.facts) FactPill(fact: fact)],
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color(0xFF242424),
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: const Color(0xFF343434)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                l10n.cardExplanationTitle,
                style: TextStyle(
                  color: accentColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.4,
                  fontFamily: GoogleFonts.fredoka().fontFamily,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                card.explanation(l10n),
                style: const TextStyle(
                  color: onBackgroundColor,
                  fontSize: 20,
                  height: 1.35,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
