import 'dart:ui';

import 'package:tablekit/1000_bombs_and_grenades/models/card_data.dart';

const backgroundColor = Color(0xFF171717);
const onBackgroundColor = Color(0xFFFFFFFF);
const primaryColor = Color(0xFF333333);
const onPrimaryColor = Color(0xFFFFFFFF);

const positiveColor = Color(0xFF9CFF79);
const positiveVariantColor = Color(0x2619871D);

const effectColor = Color.fromARGB(255, 255, 181, 121);
const effectVariantColor = Color.fromARGB(37, 135, 82, 25);

const negativeColor = Color(0xFFFF7979);
const negativeVariantColor = Color(0x26872419);

const accentColor = Color(0xFFFDDF67);

// ---- CARDS SECTION ----

final List<CardData> pirateCards = [
  CardData(
    id: 'treasure-island',
    name: (l10n) => l10n.cardTreasureIslandTitle,
    explanation: (l10n) => l10n.cardTreasureIslandExplanation,
    facts: [
      CardFact.bonus((l10n) => l10n.cardTreasureIslandFactBonus),
      CardFact.limit((l10n) => l10n.cardTreasureIslandFactLimit),
    ],
  ),
  CardData(
    id: 'pirate',
    name: (l10n) => l10n.cardPirateTitle,
    explanation: (l10n) => l10n.cardPirateExplanation,
    facts: [
      CardFact.bonus((l10n) => l10n.cardPirateFactBonus),
      CardFact.risk((l10n) => l10n.cardPirateFactRisk),
    ],
  ),
  CardData(
    id: 'skull',
    name: (l10n) => l10n.cardSkullTitle,
    explanation: (l10n) => l10n.cardSkullExplanation,
    facts: [
      CardFact.risk((l10n) => l10n.cardSkullFactRisk),
      CardFact.risk((l10n) => l10n.cardSkullFactRisk2),
    ],
  ),
  CardData(
    id: 'guard',
    name: (l10n) => l10n.cardGuardTitle,
    explanation: (l10n) => l10n.cardGuardExplanation,
    facts: [
      CardFact.bonus((l10n) => l10n.cardGuardFactBonus),
      CardFact.limit((l10n) => l10n.cardGuardFactLimit),
    ],
  ),
  CardData(
    id: 'battleship',
    name: (l10n) => l10n.cardBattleshipTitle,
    explanation: (l10n) => l10n.cardBattleshipExplanation,
    facts: [
      CardFact.limit((l10n) => l10n.cardBattleshipFactLimit),
      CardFact.risk((l10n) => l10n.cardBattleshipFactRisk),
      CardFact.limit((l10n) => l10n.cardBattleshipFactLimit2),
    ],
  ),
  CardData(
    id: 'coin',
    name: (l10n) => l10n.cardCoinTitle,
    explanation: (l10n) => l10n.cardCoinExplanation,
    facts: [CardFact.bonus((l10n) => l10n.cardCoinFactBonus)],
  ),
  CardData(
    id: 'diamond',
    name: (l10n) => l10n.cardDiamondTitle,
    explanation: (l10n) => l10n.cardDiamondExplanation,
    facts: [CardFact.bonus((l10n) => l10n.cardDiamondFactBonus)],
  ),
  CardData(
    id: 'animals',
    name: (l10n) => l10n.cardAnimalsTitle,
    explanation: (l10n) => l10n.cardAnimalsExplanation,
    facts: [CardFact.bonus((l10n) => l10n.cardAnimalsFactBonus)],
  ),
  CardData(
    id: 'peace',
    name: (l10n) => l10n.cardPeaceTitle,
    explanation: (l10n) => l10n.cardPeaceExplanation,
    facts: [
      CardFact.bonus((l10n) => l10n.cardPeaceFactBonus),
      CardFact.risk((l10n) => l10n.cardPeaceFactRisk),
      CardFact.limit((l10n) => l10n.cardPeaceFactLimit),
    ],
  ),
  CardData(
    id: 'zombie-attack',
    name: (l10n) => l10n.cardZombieAttackTitle,
    explanation: (l10n) => l10n.cardZombieAttackExplanation,
    facts: [
      CardFact.limit((l10n) => l10n.cardZombieAttackFactLimit),
      CardFact.bonus((l10n) => l10n.cardZombieAttackFactBonus),
      CardFact.risk((l10n) => l10n.cardZombieAttackFactRisk),
    ],
  ),
  CardData(
    id: 'shipwreck',
    name: (l10n) => l10n.cardShipwreckTitle,
    explanation: (l10n) => l10n.cardShipwreckExplanation,
    facts: [
      CardFact.limit((l10n) => l10n.cardShipwreckFactLimit),
      CardFact.bonus((l10n) => l10n.cardShipwreckFactBonus),
    ],
  ),
];
