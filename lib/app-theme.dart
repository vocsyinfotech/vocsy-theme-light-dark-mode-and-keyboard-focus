import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
    ),

    colorScheme: const ColorScheme.light(
      /// ColorScheme [Key : ColorScheme.background]
      background: Colors.black,

      /// ColorScheme [Key : ColorScheme.primary]
      primary: Colors.white,

      /// ColorScheme [Key : ColorScheme.secondary]
      secondary: Colors.blue,
      onSecondary: Colors.green,

      /// ColorScheme [Key : ColorScheme.onPrimary]
      onPrimary: Colors.red,
      brightness: Brightness.light,
    ),
    listTileTheme: const ListTileThemeData(
        tileColor: Colors.black,
        textColor: Colors.white,
        style: ListTileStyle.drawer,
        iconColor: Colors.red),
    radioTheme:
        RadioThemeData(fillColor: MaterialStateProperty.all(Colors.black)),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(Colors.black),
      checkColor: MaterialStateProperty.all(Colors.white),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      backgroundColor: Colors.blue,

      /// text color
      primary: Colors.white,
    )),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.black,

      /// icon color by default ColorScheme.onSecondary
      foregroundColor: Colors.yellow,

      shape: RoundedRectangleBorder(
        side: BorderSide(width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    dialogTheme: const DialogTheme(
      /// by default white
      titleTextStyle: TextStyle(
        color: Colors.orange,
        fontSize: 15,
      ),
      backgroundColor: Colors.black,
    ),

    /// by default white
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: Colors.green),
    ),

    iconTheme: const IconThemeData(color: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        /// BackGround color by default ColorScheme.primary
        primary: Colors.black,

        /// text color by default ColorScheme.onPrimary
        onPrimary: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      /// Replace With TextStyle [Key: TextTheme.bodyText1]
      bodyText1: bodyTextLight,

      /// Replace With TextStyle [Key: TextTheme.HeadLine1]
      headline1: h1StyleLight,

      /// Replace With TextStyle [Key: TextTheme.HeadLine2]
      headline2: h2StyleLight,
    ),

    /// TextFrom Field
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 3)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 3)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 3)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 3)),
      prefixStyle: TextStyle(color: Colors.red),
      prefixIconColor: Colors.pink,
      errorStyle: TextStyle(color: Colors.indigo),
      hintStyle: TextStyle(color: Colors.black),
      labelStyle: TextStyle(
        color: Colors.blue,
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedIconTheme: IconThemeData(color: Colors.black),
      unselectedIconTheme: IconThemeData(color: Colors.black38),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black38,
      type: BottomNavigationBarType.shifting,
      showUnselectedLabels: true,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      indicatorSize: TabBarIndicatorSize.label,
      unselectedLabelColor: Colors.black38,
    ),
  );

  ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.black,
        titleTextStyle: TextStyle(fontSize: 18)),
    colorScheme: const ColorScheme.dark(
      /// ColorScheme [Key : ColorScheme.background]
      background: Colors.white,

      /// ColorScheme [Key : ColorScheme.primary]
      primary: Colors.black,

      /// ColorScheme [Key : ColorScheme.secondary]
      secondary: Colors.yellow,
      onSecondary: Colors.red,

      /// ColorScheme [Key : ColorScheme.onPrimary]
      onPrimary: Colors.white,
      brightness: Brightness.dark,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: Colors.red),
    ),
    listTileTheme: const ListTileThemeData(
        tileColor: Colors.yellow,
        textColor: Colors.black,
        iconColor: Colors.blue),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(Colors.red),
    ),
    checkboxTheme: CheckboxThemeData(
      /// backGround color
      fillColor: MaterialStateProperty.all(Colors.red),
      checkColor: MaterialStateProperty.all(Colors.white),
    ),

    /// by default black
    dialogTheme: const DialogTheme(
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 15),
        backgroundColor: Colors.white),
    dividerColor: Colors.white,
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      backgroundColor: Colors.teal,

      /// text color
      primary: Colors.greenAccent,
    )),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.white,

      /// icon color by default ColorScheme.onSecondary
      foregroundColor: Colors.teal,

      shape: RoundedRectangleBorder(
        side: BorderSide(width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.green),
    textTheme: const TextTheme(

        /// Replace With TextStyle [Key: TextTheme.bodyText1]
        bodyText1: bodyTextDark,

        /// Replace With TextStyle [Key: TextTheme.HeadLine1]
        headline1: h1StyleDark,

        /// Replace With TextStyle [Key: TextTheme.HeadLine2]
        headline2: h2StyleDark),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: Colors.white, onPrimary: Colors.black),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.white38),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        type: BottomNavigationBarType.shifting,
        showUnselectedLabels: true),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 3)),
      prefixStyle: TextStyle(color: Colors.white),
      hintStyle: TextStyle(color: Colors.white),
      prefixIconColor: Colors.pink,
      errorStyle: TextStyle(color: Colors.indigo),
      labelStyle: TextStyle(color: Colors.white),
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.label,
      unselectedLabelColor: Colors.white38,
    ),
  );
}

const h1StyleLight =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green);

const h2StyleLight = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.bold,
    color: Colors.red,
    fontStyle: FontStyle.italic);

const bodyTextLight = TextStyle(
    fontSize: 13, fontWeight: FontWeight.w600, color: Colors.deepOrange);

// const h3StyleLight =
//     TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green);
//
// const h4StyleLight =
//     TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.yellow);
//
// const h5StyleLight =
//     TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.indigo);

const h1StyleDark =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.yellow);

const h2StyleDark =
    TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.green);

const bodyTextDark = TextStyle(
    fontSize: 13, fontWeight: FontWeight.w600, color: Colors.deepPurple);
