import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_nl.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('nl'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'TableKit'**
  String get appTitle;

  /// No description provided for @notFound.
  ///
  /// In en, this message translates to:
  /// **'Hmmm that page doesn\'t exist. Try going back to the home page.'**
  String get notFound;

  /// No description provided for @notFoundAction.
  ///
  /// In en, this message translates to:
  /// **'Back to home page'**
  String get notFoundAction;

  /// No description provided for @disabledGameMessage.
  ///
  /// In en, this message translates to:
  /// **'This game is currently disabled. Please check back later.'**
  String get disabledGameMessage;

  /// No description provided for @headerTitle.
  ///
  /// In en, this message translates to:
  /// **'TABLEKIT'**
  String get headerTitle;

  /// No description provided for @armadilloTitle.
  ///
  /// In en, this message translates to:
  /// **'ARMADILLO'**
  String get armadilloTitle;

  /// No description provided for @thousandBombsTitle.
  ///
  /// In en, this message translates to:
  /// **'1000 BOMBS AND GRENADES'**
  String get thousandBombsTitle;

  /// No description provided for @moreGamesfooter.
  ///
  /// In en, this message translates to:
  /// **'MORE GAMES COMING SOON'**
  String get moreGamesfooter;

  /// No description provided for @cardBackButton.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get cardBackButton;

  /// No description provided for @cardExplanationTitle.
  ///
  /// In en, this message translates to:
  /// **'How does the card work?'**
  String get cardExplanationTitle;

  /// No description provided for @tbagHeaderTitle.
  ///
  /// In en, this message translates to:
  /// **' 1000 Bombs and Grenades'**
  String get tbagHeaderTitle;

  /// Title of the Treasure Island pirate card
  ///
  /// In en, this message translates to:
  /// **'Treasure Island'**
  String get cardTreasureIslandTitle;

  /// No description provided for @cardTreasureIslandExplanation.
  ///
  /// In en, this message translates to:
  /// **'After a throw, you may place one or more dice on this card to protect them. You can pick them up later and throw them again. Only dice that are on the card score points.'**
  String get cardTreasureIslandExplanation;

  /// No description provided for @cardTreasureIslandFactBonus.
  ///
  /// In en, this message translates to:
  /// **'Dice placed on the card still count even when a 3rd skull is thrown'**
  String get cardTreasureIslandFactBonus;

  /// No description provided for @cardTreasureIslandFactLimit.
  ///
  /// In en, this message translates to:
  /// **'Only dice placed on the card score points'**
  String get cardTreasureIslandFactLimit;

  /// Title of the Pirate pirate card
  ///
  /// In en, this message translates to:
  /// **'Pirate'**
  String get cardPirateTitle;

  /// No description provided for @cardPirateExplanation.
  ///
  /// In en, this message translates to:
  /// **'All points you score this turn are doubled. If you sail to Skull Island, the other players also lose double the usual penalty per skull.'**
  String get cardPirateExplanation;

  /// No description provided for @cardPirateFactBonus.
  ///
  /// In en, this message translates to:
  /// **'All points scored this turn are doubled'**
  String get cardPirateFactBonus;

  /// No description provided for @cardPirateFactBonus2.
  ///
  /// In en, this message translates to:
  /// **'Sailing to Skull Island also doubles the penalty for the other players'**
  String get cardPirateFactBonus2;

  /// Title of the Skull pirate card
  ///
  /// In en, this message translates to:
  /// **'Skull'**
  String get cardSkullTitle;

  /// No description provided for @cardSkullExplanation.
  ///
  /// In en, this message translates to:
  /// **'Your turn starts with 1 or 2 skulls already counted, on top of whatever you throw. This makes it more likely you\'ll reach 3 skulls, and more likely you\'ll sail to Skull Island.'**
  String get cardSkullExplanation;

  /// No description provided for @cardSkullFactRisk.
  ///
  /// In en, this message translates to:
  /// **'Turn starts with 1 or 2 skulls already counted'**
  String get cardSkullFactRisk;

  /// No description provided for @cardSkullFactRisk2.
  ///
  /// In en, this message translates to:
  /// **'Higher chance of sailing to Skull Island'**
  String get cardSkullFactRisk2;

  /// Title of the Guard pirate card
  ///
  /// In en, this message translates to:
  /// **'Guard'**
  String get cardGuardTitle;

  /// No description provided for @cardGuardExplanation.
  ///
  /// In en, this message translates to:
  /// **'Once during your turn, you may reroll a single thrown skull on its own. If you reach 3 skulls at any point, your turn ends immediately and you can no longer use this.'**
  String get cardGuardExplanation;

  /// No description provided for @cardGuardFactBonus.
  ///
  /// In en, this message translates to:
  /// **'Reroll one thrown skull, once per turn'**
  String get cardGuardFactBonus;

  /// No description provided for @cardGuardFactLimit.
  ///
  /// In en, this message translates to:
  /// **'3 skulls still end your turn immediately'**
  String get cardGuardFactLimit;

  /// Title of the Battleship pirate card
  ///
  /// In en, this message translates to:
  /// **'Battleship'**
  String get cardBattleshipTitle;

  /// No description provided for @cardBattleshipExplanation.
  ///
  /// In en, this message translates to:
  /// **'You must throw at least the number of sabres shown on the card, then stop your turn voluntarily. Succeed, and you score bonus points on top of your usual score. Fail, and you score nothing and lose points instead. You can never sail to Skull Island with this card.'**
  String get cardBattleshipExplanation;

  /// No description provided for @cardBattleshipFactBonus.
  ///
  /// In en, this message translates to:
  /// **'Receive a bonus on top of the usual score if you throw the shown number of sabres'**
  String get cardBattleshipFactBonus;

  /// No description provided for @cardBattleshipFactLimit.
  ///
  /// In en, this message translates to:
  /// **'Must throw at least the shown number of sabres, then stop voluntarily'**
  String get cardBattleshipFactLimit;

  /// No description provided for @cardBattleshipFactRisk.
  ///
  /// In en, this message translates to:
  /// **'Fail to reach that number and you score 0 points, plus a penalty'**
  String get cardBattleshipFactRisk;

  /// No description provided for @cardBattleshipFactLimit2.
  ///
  /// In en, this message translates to:
  /// **'Sailing to Skull Island is not possible with this card'**
  String get cardBattleshipFactLimit2;

  /// Title of the Coin pirate card
  ///
  /// In en, this message translates to:
  /// **'Coin'**
  String get cardCoinTitle;

  /// No description provided for @cardCoinExplanation.
  ///
  /// In en, this message translates to:
  /// **'Your turn starts with an extra gold coin, which counts either on its own or as part of a combination.'**
  String get cardCoinExplanation;

  /// No description provided for @cardCoinFactBonus.
  ///
  /// In en, this message translates to:
  /// **'Turn starts with an extra gold coin, usable alone or in a combination'**
  String get cardCoinFactBonus;

  /// Title of the Diamond pirate card
  ///
  /// In en, this message translates to:
  /// **'Diamond'**
  String get cardDiamondTitle;

  /// No description provided for @cardDiamondExplanation.
  ///
  /// In en, this message translates to:
  /// **'Your turn starts with an extra diamond, which counts either on its own or as part of a combination.'**
  String get cardDiamondExplanation;

  /// No description provided for @cardDiamondFactBonus.
  ///
  /// In en, this message translates to:
  /// **'Turn starts with an extra diamond, usable alone or in a combination'**
  String get cardDiamondFactBonus;

  /// Title of the Animals pirate card
  ///
  /// In en, this message translates to:
  /// **'Animals'**
  String get cardAnimalsTitle;

  /// No description provided for @cardAnimalsExplanation.
  ///
  /// In en, this message translates to:
  /// **'Any monkeys and parrots you throw count together as a single combination. For example, 2 parrots and 3 monkeys score as a combination of 5 matching dice.'**
  String get cardAnimalsExplanation;

  /// No description provided for @cardAnimalsFactBonus.
  ///
  /// In en, this message translates to:
  /// **'Thrown monkeys and parrots count together as one combination'**
  String get cardAnimalsFactBonus;

  /// Title of the Peace pirate card
  ///
  /// In en, this message translates to:
  /// **'Peace'**
  String get cardPeaceTitle;

  /// No description provided for @cardPeaceExplanation.
  ///
  /// In en, this message translates to:
  /// **'You must finish your turn without a single sabre die on the table. Succeed, and your points for the turn are doubled. Fail, and you score nothing and lose 500 points per sabre thrown instead. If you sail to Skull Island, the no-sabre rule applies there too.'**
  String get cardPeaceExplanation;

  /// No description provided for @cardPeaceFactBonus.
  ///
  /// In en, this message translates to:
  /// **'Finish the turn with no sabres on the table and double your points'**
  String get cardPeaceFactBonus;

  /// No description provided for @cardPeaceFactRisk.
  ///
  /// In en, this message translates to:
  /// **'Throw a sabre and you score nothing, losing 500 points per sabre'**
  String get cardPeaceFactRisk;

  /// No description provided for @cardPeaceFactLimit.
  ///
  /// In en, this message translates to:
  /// **'The no-sabre rule also applies if you sail to Skull Island'**
  String get cardPeaceFactLimit;

  /// Title of the Zombie attack pirate card
  ///
  /// In en, this message translates to:
  /// **'Zombie attack'**
  String get cardZombieAttackTitle;

  /// No description provided for @cardZombieAttackExplanation.
  ///
  /// In en, this message translates to:
  /// **'Keep throwing until every die shows either a sabre or a skull. Skulls can\'t be rerolled, but 3 or more skulls don\'t end your turn and you can\'t sail to Skull Island. Throw at least 5 sabres in total and you score 1200 points; fall short, and those 1200 points are split among the other players instead.'**
  String get cardZombieAttackExplanation;

  /// No description provided for @cardZombieAttackFactLimit1.
  ///
  /// In en, this message translates to:
  /// **'Keep throwing until every die shows a sabre or a skull'**
  String get cardZombieAttackFactLimit1;

  /// No description provided for @cardZombieAttackFactLimit2.
  ///
  /// In en, this message translates to:
  /// **'You cannot go to skull island'**
  String get cardZombieAttackFactLimit2;

  /// No description provided for @cardZombieAttackFactBonus1.
  ///
  /// In en, this message translates to:
  /// **'5 or more sabres thrown in total earns 1200 points'**
  String get cardZombieAttackFactBonus1;

  /// No description provided for @cardZombieAttackFactBonus2.
  ///
  /// In en, this message translates to:
  /// **'3 or more skulls don\'t end your turn'**
  String get cardZombieAttackFactBonus2;

  /// No description provided for @cardZombieAttackFactRisk.
  ///
  /// In en, this message translates to:
  /// **'Fewer than 5 sabres and the 1200 points are divided among the other players instead'**
  String get cardZombieAttackFactRisk;

  /// Title of the Shipwreck pirate card
  ///
  /// In en, this message translates to:
  /// **'Shipwreck'**
  String get cardShipwreckTitle;

  /// No description provided for @cardShipwreckExplanation.
  ///
  /// In en, this message translates to:
  /// **'You may only throw twice. Skulls can\'t be rerolled, but even 3 or more skulls don\'t stop your second throw. You just can\'t sail to Skull Island. Only diamonds and gold coins score, and their points are doubled.'**
  String get cardShipwreckExplanation;

  /// No description provided for @cardShipwreckFactLimit.
  ///
  /// In en, this message translates to:
  /// **'You may only throw twice'**
  String get cardShipwreckFactLimit;

  /// No description provided for @cardShipwreckFactLimit2.
  ///
  /// In en, this message translates to:
  /// **'You can\'t sail to Skull Island'**
  String get cardShipwreckFactLimit2;

  /// No description provided for @cardShipwreckFactLimit3.
  ///
  /// In en, this message translates to:
  /// **'Only diamonds and gold coins score points.'**
  String get cardShipwreckFactLimit3;

  /// No description provided for @cardShipwreckFactBonus.
  ///
  /// In en, this message translates to:
  /// **'You cannot die with 3 skulls'**
  String get cardShipwreckFactBonus;

  /// No description provided for @cardShipwreckFactBonus1.
  ///
  /// In en, this message translates to:
  /// **'Your score is doubled'**
  String get cardShipwreckFactBonus1;

  /// No description provided for @armCalculate.
  ///
  /// In en, this message translates to:
  /// **'Calculate'**
  String get armCalculate;

  /// No description provided for @armScoreboard.
  ///
  /// In en, this message translates to:
  /// **'Scoreboard'**
  String get armScoreboard;

  /// No description provided for @armEstimate.
  ///
  /// In en, this message translates to:
  /// **'Estimate'**
  String get armEstimate;

  /// No description provided for @armNoPlayersYet.
  ///
  /// In en, this message translates to:
  /// **'No players created yet.'**
  String get armNoPlayersYet;

  /// No description provided for @armAdd.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get armAdd;

  /// No description provided for @armReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get armReset;

  /// No description provided for @arm1st.
  ///
  /// In en, this message translates to:
  /// **'1st'**
  String get arm1st;

  /// No description provided for @arm2nd.
  ///
  /// In en, this message translates to:
  /// **'2nd'**
  String get arm2nd;

  /// No description provided for @arm3rd.
  ///
  /// In en, this message translates to:
  /// **'3rd'**
  String get arm3rd;

  /// No description provided for @armAddPlayer.
  ///
  /// In en, this message translates to:
  /// **'Add Player'**
  String get armAddPlayer;

  /// No description provided for @armAddPlayerName.
  ///
  /// In en, this message translates to:
  /// **'Enter player name'**
  String get armAddPlayerName;

  /// No description provided for @armCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get armCancel;

  /// No description provided for @armResetScoreboard.
  ///
  /// In en, this message translates to:
  /// **'Reset Scoreboard'**
  String get armResetScoreboard;

  /// No description provided for @armResetScoreboardMessage.
  ///
  /// In en, this message translates to:
  /// **'Do you want to reset just the scoreboard or reset everything?'**
  String get armResetScoreboardMessage;

  /// No description provided for @armResetScoresOnly.
  ///
  /// In en, this message translates to:
  /// **'Reset Scores Only'**
  String get armResetScoresOnly;

  /// No description provided for @armResetEverything.
  ///
  /// In en, this message translates to:
  /// **'Reset Everything'**
  String get armResetEverything;

  /// No description provided for @armMin.
  ///
  /// In en, this message translates to:
  /// **'Min'**
  String get armMin;

  /// No description provided for @armMax.
  ///
  /// In en, this message translates to:
  /// **'Max'**
  String get armMax;

  /// No description provided for @armAverage.
  ///
  /// In en, this message translates to:
  /// **'Avg'**
  String get armAverage;

  /// No description provided for @armEstimateHeaderSection1.
  ///
  /// In en, this message translates to:
  /// **'I want to roll a...'**
  String get armEstimateHeaderSection1;

  /// No description provided for @armEstimateHeaderSection2.
  ///
  /// In en, this message translates to:
  /// **'You should throw...'**
  String get armEstimateHeaderSection2;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'nl'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'nl':
      return AppLocalizationsNl();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
