import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      initialLabelIndex: 0,
      totalSwitches: 2,
      borderWidth: 0,
      radiusStyle: true,
      cornerRadius: 999,
      dividerColor: Colors.transparent,
      activeBgColor: const [Color(0xFFF8F6F2)],
      inactiveBgColor: const Color(0xFFE8E5E0),
      activeFgColor: Colors.black,
      inactiveFgColor: const Color(0xFFACACAC),
      customWidths: const [150, 150],
      customTextStyles: [
        TextStyle(
          color: Colors.black,
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontFamily: GoogleFonts.anton().fontFamily,
        ),
        TextStyle(
          color: Colors.black,
          fontSize: 34,
          fontWeight: FontWeight.w700,
          fontFamily: GoogleFonts.anton().fontFamily,
        ),
      ],
      labels: ['EN', 'NL'],
      animate: true,
      onToggle: (index) {
        print('switched to: $index = ${index == 0 ? 'English' : 'Dutch'}');
      },
    );
  }
}
