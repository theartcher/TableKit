// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'TableKit';

  @override
  String get notFound =>
      'Hmmm that page doesn\'t exist. Try going back to the home page.';

  @override
  String get notFoundAction => 'Back to home page';

  @override
  String get disabledGameMessage =>
      'This game is currently disabled. Please check back later.';

  @override
  String get headerTitle => 'TABLEKIT';

  @override
  String get armadilloTitle => 'ARMADILLO';

  @override
  String get thousandBombsTitle => '1000 BOMBS AND GRENADES';

  @override
  String get moreGamesfooter => 'MORE GAMES COMING SOON';

  @override
  String get cardBackButton => 'Back';

  @override
  String get cardExplanationTitle => 'How does the card work?';

  @override
  String get tbagHeaderTitle => ' 1000 Bombs and Grenades';

  @override
  String get cardTreasureIslandTitle => 'Treasure Island';

  @override
  String get cardTreasureIslandExplanation =>
      'After a throw, you may place one or more dice on this card to protect them. You can pick them up later and throw them again. Only dice that are on the card score points.';

  @override
  String get cardTreasureIslandFactBonus =>
      'Dice placed on the card still count even when a 3rd skull is thrown';

  @override
  String get cardTreasureIslandFactLimit =>
      'Only dice placed on the card score points';

  @override
  String get cardPirateTitle => 'Pirate';

  @override
  String get cardPirateExplanation =>
      'All points you score this turn are doubled. If you sail to Skull Island, the other players also lose double the usual penalty per skull.';

  @override
  String get cardPirateFactBonus => 'All points scored this turn are doubled';

  @override
  String get cardPirateFactBonus2 =>
      'Sailing to Skull Island also doubles the penalty for the other players';

  @override
  String get cardSkullTitle => 'Skull';

  @override
  String get cardSkullExplanation =>
      'Your turn starts with 1 or 2 skulls already counted, on top of whatever you throw. This makes it more likely you\'ll reach 3 skulls, and more likely you\'ll sail to Skull Island.';

  @override
  String get cardSkullFactRisk =>
      'Turn starts with 1 or 2 skulls already counted';

  @override
  String get cardSkullFactRisk2 => 'Higher chance of sailing to Skull Island';

  @override
  String get cardGuardTitle => 'Guard';

  @override
  String get cardGuardExplanation =>
      'Once during your turn, you may reroll a single thrown skull on its own. If you reach 3 skulls at any point, your turn ends immediately and you can no longer use this.';

  @override
  String get cardGuardFactBonus => 'Reroll one thrown skull, once per turn';

  @override
  String get cardGuardFactLimit => '3 skulls still end your turn immediately';

  @override
  String get cardBattleshipTitle => 'Battleship';

  @override
  String get cardBattleshipExplanation =>
      'You must throw at least the number of sabres shown on the card, then stop your turn voluntarily. Succeed, and you score bonus points on top of your usual score. Fail, and you score nothing and lose points instead. You can never sail to Skull Island with this card.';

  @override
  String get cardBattleshipFactBonus =>
      'Receive a bonus on top of the usual score if you throw the shown number of sabres';

  @override
  String get cardBattleshipFactLimit =>
      'Must throw at least the shown number of sabres, then stop voluntarily';

  @override
  String get cardBattleshipFactRisk =>
      'Fail to reach that number and you score 0 points, plus a penalty';

  @override
  String get cardBattleshipFactLimit2 =>
      'Sailing to Skull Island is not possible with this card';

  @override
  String get cardCoinTitle => 'Coin';

  @override
  String get cardCoinExplanation =>
      'Your turn starts with an extra gold coin, which counts either on its own or as part of a combination.';

  @override
  String get cardCoinFactBonus =>
      'Turn starts with an extra gold coin, usable alone or in a combination';

  @override
  String get cardDiamondTitle => 'Diamond';

  @override
  String get cardDiamondExplanation =>
      'Your turn starts with an extra diamond, which counts either on its own or as part of a combination.';

  @override
  String get cardDiamondFactBonus =>
      'Turn starts with an extra diamond, usable alone or in a combination';

  @override
  String get cardAnimalsTitle => 'Animals';

  @override
  String get cardAnimalsExplanation =>
      'Any monkeys and parrots you throw count together as a single combination. For example, 2 parrots and 3 monkeys score as a combination of 5 matching dice.';

  @override
  String get cardAnimalsFactBonus =>
      'Thrown monkeys and parrots count together as one combination';

  @override
  String get cardPeaceTitle => 'Peace';

  @override
  String get cardPeaceExplanation =>
      'You must finish your turn without a single sabre die on the table. Succeed, and your points for the turn are doubled. Fail, and you score nothing and lose 500 points per sabre thrown instead. If you sail to Skull Island, the no-sabre rule applies there too.';

  @override
  String get cardPeaceFactBonus =>
      'Finish the turn with no sabres on the table and double your points';

  @override
  String get cardPeaceFactRisk =>
      'Throw a sabre and you score nothing, losing 500 points per sabre';

  @override
  String get cardPeaceFactLimit =>
      'The no-sabre rule also applies if you sail to Skull Island';

  @override
  String get cardZombieAttackTitle => 'Zombie attack';

  @override
  String get cardZombieAttackExplanation =>
      'Keep throwing until every die shows either a sabre or a skull. Skulls can\'t be rerolled, but 3 or more skulls don\'t end your turn and you can\'t sail to Skull Island. Throw at least 5 sabres in total and you score 1200 points; fall short, and those 1200 points are split among the other players instead.';

  @override
  String get cardZombieAttackFactLimit1 =>
      'Keep throwing until every die shows a sabre or a skull';

  @override
  String get cardZombieAttackFactLimit2 => 'You cannot go to skull island';

  @override
  String get cardZombieAttackFactBonus1 =>
      '5 or more sabres thrown in total earns 1200 points';

  @override
  String get cardZombieAttackFactBonus2 =>
      '3 or more skulls don\'t end your turn';

  @override
  String get cardZombieAttackFactRisk =>
      'Fewer than 5 sabres and the 1200 points are divided among the other players instead';

  @override
  String get cardShipwreckTitle => 'Shipwreck';

  @override
  String get cardShipwreckExplanation =>
      'You may only throw twice. Skulls can\'t be rerolled, but even 3 or more skulls don\'t stop your second throw. You just can\'t sail to Skull Island. Only diamonds and gold coins score, and their points are doubled.';

  @override
  String get cardShipwreckFactLimit => 'You may only throw twice';

  @override
  String get cardShipwreckFactLimit2 => 'You can\'t sail to Skull Island';

  @override
  String get cardShipwreckFactLimit3 =>
      'Only diamonds and gold coins score points.';

  @override
  String get cardShipwreckFactBonus => 'You cannot die with 3 skulls';

  @override
  String get cardShipwreckFactBonus1 => 'Your score is doubled';
}
