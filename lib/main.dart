import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'app-theme.dart';
import 'constant.dart';
import 'screen/homePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    isDark = SchedulerBinding.instance.window.platformBrightness == Brightness.dark ? true : false;
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(builder: (context, ThemeNotifier notifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Theme Demo',
          theme: notifier.darkTheme == null
              ? isDark
                  ? AppTheme().darkTheme
                  : AppTheme().lightTheme
              : notifier.darkTheme == true
                  ? AppTheme().darkTheme
                  : AppTheme().lightTheme,
          themeMode: notifier.darkTheme == null
              ? ThemeMode.system
              : notifier.darkTheme == true
                  ? ThemeMode.dark
                  : ThemeMode.light,
          home: MyHomePage(),
        );
      }),
    );
  }
}
