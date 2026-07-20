import 'package:flutter/widgets.dart';
import 'package:tablekit/1000_bombs_and_grenades/models/card_data.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class FactChip extends StatelessWidget {
  final CardFact fact;
  const FactChip({super.key, required this.fact});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
      decoration: BoxDecoration(
        color: fact.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
              color: fact.onBackgroundColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            fact.text(l10n),
            style: TextStyle(
              color: fact.onBackgroundColor,
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
