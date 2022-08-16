import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool isDark = false;

class ThemeNotifier extends ChangeNotifier {
  final String key = "theme";
  SharedPreferences? pref;
  bool? darkTheme;
  ThemeNotifier() {
    _loadFromPrefs();
  }

  toggleTheme() {
    if (darkTheme == null) {
      darkTheme = !isDark;
      pref!.setBool(key, darkTheme!);
      _loadFromPrefs();
    } else {
      darkTheme = !darkTheme!;
    }
    _saveToPrefs();
    notifyListeners();
  }

  _initPrefs() async {
    pref ??= await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
    await _initPrefs();
    darkTheme = pref!.getBool(key);
    notifyListeners();
  }

  _saveToPrefs() async {
    await _initPrefs();
    pref!.setBool(key, darkTheme!);
  }
}
