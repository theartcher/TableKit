// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'TableKit';

  @override
  String get notFound =>
      'Hmmm deze pagina bestaat niet. Ga terug naar de startpagina.';

  @override
  String get notFoundAction => 'Terug naar startpagina';

  @override
  String get disabledGameMessage =>
      'Dit spel is momenteel niet beschikbaar. Check later nog eens.';

  @override
  String get headerTitle => 'TABLEKIT';

  @override
  String get armadilloTitle => 'ARMADILLO';

  @override
  String get thousandBombsTitle => '1000 BOMMEN EN GRANATEN';

  @override
  String get moreGamesfooter => 'BINNENKORT MEER SPELLEN';

  @override
  String get cardBackButton => 'Terug';

  @override
  String get cardExplanationTitle => 'Hoe werkt de kaart?';

  @override
  String get tbagHeaderTitle => '1000 Bommen en granaten';

  @override
  String get cardTreasureIslandTitle => 'Schateiland';

  @override
  String get cardTreasureIslandExplanation =>
      'Na een worp mag je 1 of meer dobbelstenen op deze kaart leggen om ze veilig te stellen. Je mag ze later weer oppakken en opnieuw werpen. Alleen dobbelstenen die op de kaart liggen tellen mee voor je punten.';

  @override
  String get cardTreasureIslandFactBonus =>
      'Dobbelstenen op de kaart tellen ook als je 3e doodshoofd gegooid wordt';

  @override
  String get cardTreasureIslandFactLimit =>
      'Alleen dobbelstenen op de kaart tellen mee voor punten';

  @override
  String get cardPirateTitle => 'Piraat';

  @override
  String get cardPirateExplanation =>
      'Alle punten die je deze beurt scoort, tellen dubbel. Vaar je naar het Doodshoofdeiland, dan verliezen de andere spelers ook dubbele strafpunten per doodshoofd.';

  @override
  String get cardPirateFactBonus => 'Alle punten deze beurt tellen dubbel';

  @override
  String get cardPirateFactBonus2 =>
      'Strafpunten van het Doodshoofdeiland worden ook verdubbeld';

  @override
  String get cardSkullTitle => 'Doodshoofd';

  @override
  String get cardSkullExplanation =>
      'Je beurt begint al met 1 of 2 doodshoofden erbij geteld, bovenop wat je zelf gooit. Daardoor bereik je sneller 3 doodshoofden, en is de kans groter dat je naar het Doodshoofdeiland vaart.';

  @override
  String get cardSkullFactRisk => 'Beurt begint al met 1 of 2 doodshoofden';

  @override
  String get cardSkullFactRisk2 => 'Grotere kans op het Doodshoofdeiland';

  @override
  String get cardGuardTitle => 'Wachter';

  @override
  String get cardGuardExplanation =>
      'Je mag deze beurt eenmalig een gegooid doodshoofd los opnieuw werpen. Heb je op enig moment 3 doodshoofden, dan is je beurt direct voorbij en kun je dit niet meer gebruiken.';

  @override
  String get cardGuardFactBonus =>
      '1x per beurt een gegooid doodshoofd opnieuw werpen';

  @override
  String get cardGuardFactLimit =>
      '3 doodshoofden beëindigen je beurt alsnog direct';

  @override
  String get cardBattleshipTitle => 'Piratenschip';

  @override
  String get cardBattleshipExplanation =>
      'Je moet minstens het op de kaart getoonde aantal sabels gooien en daarna vrijwillig stoppen. Lukt dat, dan krijg je naast je gewone punten ook de bonuspunten op de kaart. Lukt het niet, dan scoor je niets en trek je bovendien punten af. Met deze kaart kun je nooit naar het Doodshoofdeiland varen.';

  @override
  String get cardBattleshipFactBonus =>
      'Ontvang een bonus bovenop de normale score als je het getoonde aantal sabels gooit';

  @override
  String get cardBattleshipFactLimit =>
      'Minstens het getoonde aantal sabels gooien, dan vrijwillig stoppen';

  @override
  String get cardBattleshipFactRisk =>
      'Lukt dat niet, dan 0 punten plus de bonus als strafpunten';

  @override
  String get cardBattleshipFactLimit2 =>
      'Doodshoofdeiland is met deze kaart niet mogelijk';

  @override
  String get cardCoinTitle => 'Gouden munt';

  @override
  String get cardCoinExplanation =>
      'Je beurt begint met een extra gouden munt, die zowel los als in een combinatie meetelt.';

  @override
  String get cardCoinFactBonus =>
      'Beurt begint met een extra gouden munt, los of in combinatie te gebruiken';

  @override
  String get cardDiamondTitle => 'Diamant';

  @override
  String get cardDiamondExplanation =>
      'Je beurt begint met een extra diamant, die zowel los als in een combinatie meetelt.';

  @override
  String get cardDiamondFactBonus =>
      'Beurt begint met een extra diamant, los of in combinatie te gebruiken';

  @override
  String get cardAnimalsTitle => 'Dieren';

  @override
  String get cardAnimalsExplanation =>
      'Gegooide apen en papegaaien tellen samen als 1 combinatie. Zo scoor je bijvoorbeeld met 2 papegaaien en 3 apen alsof je een combinatie van 5 gelijke dobbelstenen hebt.';

  @override
  String get cardAnimalsFactBonus =>
      'Apen en papegaaien tellen samen als 1 combinatie';

  @override
  String get cardPeaceTitle => 'Vrede';

  @override
  String get cardPeaceExplanation =>
      'Je moet je beurt beëindigen zonder een sabel op het bord te hebben. Lukt dat, dan verdubbelen je punten deze beurt. Lukt het niet, dan scoor je niets en verlies je bovendien 500 punten per gegooide sabel. Vaar je naar het Doodshoofdeiland, dan geldt de sabel-regel daar ook.';

  @override
  String get cardPeaceFactBonus =>
      'Geen sabel op het bord deze beurt is dubbele punten';

  @override
  String get cardPeaceFactRisk =>
      'Wel een sabel op het bord is het 0 punten en -500 per sabel';

  @override
  String get cardPeaceFactLimit =>
      'De sabel-regel geldt ook op het Doodshoofdeiland';

  @override
  String get cardZombieAttackTitle => 'Zombieaanval';

  @override
  String get cardZombieAttackExplanation =>
      'Je blijft gooien totdat elke dobbelsteen een sabel of een doodshoofd toont. Doodshoofden mag je niet herwerpen, maar 3 of meer doodshoofden beëindigen je beurt niet en je kunt niet naar het Doodshoofdeiland varen. Gooi je in totaal minstens 5 sabels, dan krijg je 1200 punten; lukt dat niet, dan gaan die 1200 punten gelijk verdeeld naar de andere spelers.';

  @override
  String get cardZombieAttackFactLimit1 =>
      'Blijven gooien tot elke steen een sabel of doodshoofd toont, doodshoofden beëindigen de beurt niet en geen Doodshoofdeiland';

  @override
  String get cardZombieAttackFactLimit2 =>
      'Je kan niet naar het Doodshoofdeiland varen';

  @override
  String get cardZombieAttackFactBonus1 =>
      '5 of meer sabels in totaal levert 1200 punten op';

  @override
  String get cardZombieAttackFactBonus2 =>
      '3 of meer doodshoofden beëindigen je beurt niet';

  @override
  String get cardZombieAttackFactRisk =>
      'Met minder dan 5 sabels worden de 1200 punten onderverdeeld aan de andere spelers';

  @override
  String get cardShipwreckTitle => 'Schipbreuk';

  @override
  String get cardShipwreckExplanation =>
      'Je mag maar twee keer gooien. Doodshoofden mag je niet opnieuw werpen, maar zelfs bij 3 of meer doodshoofden mag je toch een tweede keer gooien. Je kunt niet naar het Doodshoofdeiland varen. Je scoort alleen punten voor diamanten en gouden munten, maar deze tellen wel dubbel.';

  @override
  String get cardShipwreckFactLimit => 'Je mag maar 2x werpen';

  @override
  String get cardShipwreckFactLimit2 =>
      'Naar het Doodshoofdeiland varen is niet mogelijk';

  @override
  String get cardShipwreckFactLimit3 =>
      'Alleen diamanten en gouden munten tellen mee voor punten';

  @override
  String get cardShipwreckFactBonus =>
      '3 of meer doodshoofden beëindigen je beurt niet';

  @override
  String get cardShipwreckFactBonus1 => 'Je score telt dubbel';

  @override
  String get armCalculate => 'Berekenen';

  @override
  String get armScoreboard => 'Scorebord';

  @override
  String get armEstimate => 'Schatten';

  @override
  String get armNoPlayersYet => 'Er zijn nog geen spelers aangemaakt.';

  @override
  String get armAdd => 'Toevoegen';

  @override
  String get armReset => 'Resetten';

  @override
  String get arm1st => '1e';

  @override
  String get arm2nd => '2e';

  @override
  String get arm3rd => '3e';

  @override
  String get armAddPlayer => 'Speler Toevoegen';

  @override
  String get armAddPlayerName => 'Voer speler naam in';

  @override
  String get armCancel => 'Annuleren';

  @override
  String get armResetScoreboard => 'Scorebord Resetten';

  @override
  String get armResetScoreboardMessage =>
      'Wil je alleen het scorebord resetten of alles resetten?';

  @override
  String get armResetScoresOnly => 'Alleen Scores Resetten';

  @override
  String get armResetEverything => 'Alles Resetten';

  @override
  String get armMin => 'Min';

  @override
  String get armMax => 'Max';

  @override
  String get armAverage => 'Gem';

  @override
  String get armEstimateHeaderSection1 => 'Ik wil het volgende rollen...';

  @override
  String get armEstimateHeaderSection2 => 'Gooi de volgende stenen...';
}
