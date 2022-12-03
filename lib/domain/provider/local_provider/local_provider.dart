// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalProvider extends ChangeNotifier {
  
   Locale? _locale;
   Locale? get locale => _locale;
   
   
    Future <void>setLocale({String? locale}) async {
    final pref = await SharedPreferences.getInstance();
    
    locale = pref.getString('lang');
    _locale = Locale(locale ?? 'ru');
    

    print(locale);
    
    notifyListeners();
    
   }
  
}
