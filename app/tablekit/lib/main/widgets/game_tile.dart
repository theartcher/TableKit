import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameTile extends StatelessWidget {
  const GameTile(this.text, this.textColor, this.containerColor, {super.key});

  final String text;
  final Color textColor;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 72, 18, 18),
      decoration: BoxDecoration(
        color: containerColor,
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
          color: textColor,
        ),
      ),
    );
  }
}
