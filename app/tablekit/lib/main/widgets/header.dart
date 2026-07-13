import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablekit/main/widgets/language-switcher.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'TABLEKIT',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            fontFamily: GoogleFonts.anton().fontFamily,
            color: Colors.black,
          ),
        ),
        // LanguageSwitcher(),
      ],
    );
  }
}
