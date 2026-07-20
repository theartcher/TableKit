import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablekit/1000_bombs_and_grenades/utility/constants.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class CardBackButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CardBackButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Material(
      color: const Color(0xCC3A3328),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(999),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.chevron_left, color: onPrimaryColor, size: 30),
              Text(
                l10n.cardBackButton.toUpperCase(),
                style: TextStyle(
                  color: onPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.6,
                  fontFamily: GoogleFonts.fredoka().fontFamily,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
