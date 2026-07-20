import 'dart:ui';

import 'package:tablekit/1000_bombs_and_grenades/utility/constants.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';

class CardData {
  final String id;
  final String Function(AppLocalizations) name;
  final String Function(AppLocalizations) explanation;
  final List<CardFact> facts;

  CardData({
    required this.id,
    required this.name,
    required this.explanation,
    required this.facts,
  });

  String get imagePath => 'assets/tbag/$id.jpg';
}

enum FactType { bonus, risk, limit }

class CardFact {
  final FactType type;
  final String Function(AppLocalizations) _textBuilder;

  const CardFact.bonus(this._textBuilder) : type = FactType.bonus;
  const CardFact.risk(this._textBuilder) : type = FactType.risk;
  const CardFact.limit(this._textBuilder) : type = FactType.limit;

  String text(AppLocalizations l10n) => _textBuilder(l10n);

  Color get backgroundColor {
    switch (type) {
      case FactType.bonus:
        return positiveVariantColor;
      case FactType.risk:
        return negativeVariantColor;
      case FactType.limit:
        return effectVariantColor;
    }
  }

  Color get onBackgroundColor {
    switch (type) {
      case FactType.bonus:
        return positiveColor;
      case FactType.risk:
        return negativeColor;
      case FactType.limit:
        return effectColor;
    }
  }
}
