
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sprintproject/home.dart';
import 'package:sprintproject/page1.dart';
import 'package:sprintproject/page2.dart';
import 'package:sprintproject/page3.dart';


import 'localization.dart'; // ملف LocalizationService

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalizationService.init(); // تهيئة EasyLocalization
  runApp(LocalizationService.wrapApp(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const ShopApp(),
      routes: {
        "page1": (context) => const ShopApp(),
        "page2": (context) => const Signupform(),
        "page3": (context) => const Signinform(),
        "home": (context) => const Home(),
      },
    );
  }
}
