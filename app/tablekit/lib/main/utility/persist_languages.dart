import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersistLanguages {
  PersistLanguages._();

  static const String storageKey = 'selected_locale';
  static const String defaultLocaleCode = 'en';
  static const String englishLocaleCode = 'en';
  static const String dutchLocaleCode = 'nl';

  static const Locale englishLocale = Locale('en');
  static const Locale dutchLocale = Locale('nl');

  static List<Locale> get supportedLocales => const [
    englishLocale,
    dutchLocale,
  ];

  static List<String> get supportedLocaleCodes => const [
    englishLocaleCode,
    dutchLocaleCode,
  ];

  static Locale localeFromCode(String? localeCode) {
    if (localeCode == null) {
      return localeFromCode(defaultLocaleCode);
    }

    final parts = localeCode.split('-');
    if (parts.isNotEmpty) {
      return Locale(parts.first);
    }

    return localeFromCode(defaultLocaleCode);
  }

  static String codeFromLocale(Locale locale) {
    return locale.languageCode;
  }

  static Future<Locale> loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final storedLocaleCode = prefs.getString(storageKey);

    if (storedLocaleCode != null &&
        supportedLocaleCodes.contains(storedLocaleCode)) {
      return localeFromCode(storedLocaleCode);
    }

    return localeFromCode(defaultLocaleCode);
  }

  static Future<void> saveLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(storageKey, codeFromLocale(locale));
  }
}
