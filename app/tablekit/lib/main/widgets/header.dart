import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';
import 'package:tablekit/main/widgets/language_switcher.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          l10n.headerTitle,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.anton().fontFamily,
            color: Colors.black,
          ),
        ),
        const LanguageSwitcher(),
      ],
    );
  }
}
