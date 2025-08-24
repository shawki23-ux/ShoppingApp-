
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
class Lang extends StatefulWidget {
  const Lang({super.key});

  @override
  State<Lang> createState() => _LangState();
}

class _LangState extends State<Lang> {
  @override
  Widget build(BuildContext context) {
    return Text("shawki");
  }

  changelang() {
    if (context.locale == Locale('en', 'US')){
      context.setLocale(Locale('ar', 'EG'));

    }


    else {context.setLocale( Locale('en', 'US'));

    }


}}
