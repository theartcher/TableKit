import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tablekit/l10n/generated/app_localizations.dart';
import 'package:tablekit/main/screens/home_screen.dart';
import 'package:tablekit/main/utility/constants.dart';
import 'package:tablekit/main/utility/persist_languages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();

  static _MainAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MainAppState>()!;
}

class _MainAppState extends State<MainApp> {
  late Locale _locale;

  @override
  void initState() {
    super.initState();
    _locale = PersistLanguages.localeFromCode(
      PersistLanguages.defaultLocaleCode,
    );

    PersistLanguages.loadLocale().then((loadedLocale) {
      if (mounted) {
        setState(() {
          _locale = loadedLocale;
        });
      }
    });
  }

  void changeLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });

    PersistLanguages.saveLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
      locale: _locale,
      supportedLocales: PersistLanguages.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        if (locale == null) {
          return PersistLanguages.englishLocale;
        }

        for (final supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            return supportedLocale;
          }
        }

        return PersistLanguages.englishLocale;
      },
    );
  }
}
