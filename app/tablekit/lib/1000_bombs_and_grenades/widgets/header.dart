import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablekit/1000_bombs_and_grenades/utility/constants.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () => {context.pop()},
              icon: Icon(Icons.arrow_back, color: onPrimaryColor),
            ),
            Text(
              l10n.tbagHeaderTitle,
              style: TextStyle(
                color: onPrimaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: GoogleFonts.fredoka().fontFamily,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
