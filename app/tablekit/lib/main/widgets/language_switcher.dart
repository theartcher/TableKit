import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablekit/main.dart';
import 'package:tablekit/main/utility/persist_languages.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLocale = Localizations.localeOf(context);
    final selectedIndex = currentLocale.languageCode == 'nl' ? 1 : 0;

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xFFE8E5E0),
        borderRadius: BorderRadius.circular(999),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0F000000),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ToggleButtons(
        isSelected: [selectedIndex == 0, selectedIndex == 1],
        onPressed: (int index) {
          final nextLocale = index == 0
              ? PersistLanguages.englishLocale
              : PersistLanguages.dutchLocale;
          MainApp.of(context).changeLocale(nextLocale);
          PersistLanguages.saveLocale(nextLocale);
        },
        borderRadius: BorderRadius.circular(999),
        borderColor: Colors.transparent,
        selectedBorderColor: Colors.transparent,
        fillColor: const Color(0xFFF8F6F2),
        selectedColor: Colors.black,
        color: const Color(0xFFACACAC),
        splashColor: Colors.transparent,
        renderBorder: false,
        constraints: const BoxConstraints(minHeight: 44, minWidth: 64),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'EN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.anton().fontFamily,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              'NL',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.anton().fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
