import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tablekit/1000_bombs_and_grenades/models/card_data.dart';
import 'package:tablekit/1000_bombs_and_grenades/utility/constants.dart';
import 'package:tablekit/1000_bombs_and_grenades/widgets/back_button.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class CardView extends StatelessWidget {
  final CardData card;
  final bool isDesktop;
  final VoidCallback onBackPressed;
  final bool showTitle;

  const CardView({
    super.key,
    required this.card,
    required this.isDesktop,
    required this.onBackPressed,
    this.showTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return AspectRatio(
      aspectRatio: isDesktop ? 0.78 : 0.74,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              card.imagePath,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                color: primaryColor,
                alignment: Alignment.center,
                child: Text(
                  'Image not found',
                  style: TextStyle(
                    color: onPrimaryColor,
                    fontFamily: GoogleFonts.fredoka().fontFamily,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 18,
              top: 18,
              child: CardBackButton(onPressed: onBackPressed),
            ),
            if (showTitle)
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(18, 18, 18, 22),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        primaryColor.withValues(alpha: 0.96),
                      ],
                    ),
                  ),
                  child: Text(
                    card.name(l10n),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: onPrimaryColor,
                      fontSize: isDesktop ? 42 : 34,
                      height: 0.95,
                      fontWeight: FontWeight.w800,
                      fontFamily: GoogleFonts.fredoka().fontFamily,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
