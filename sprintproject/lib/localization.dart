import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocalizationService {
  static final supportedLocales = [
    Locale('en', 'US'),
    Locale('ar', 'EG'),
  ];

  static const fallbackLocale = Locale('en', 'US');

  static Future<void> init() async {
    await EasyLocalization.ensureInitialized();
  }

  static EasyLocalization wrapApp({required Widget child}) {
    return EasyLocalization(
      supportedLocales: supportedLocales,
      path: 'lang',
      fallbackLocale: fallbackLocale,
      child: child,
    );
  }
}