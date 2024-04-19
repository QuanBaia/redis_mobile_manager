import 'package:flutter/material.dart';

// app 主题管理
class AppTheme {

  // main theme
  static ThemeData mainTheme = ThemeData(
    //font theme
    fontFamily: 'HuaWeiSans',
    textTheme: const TextTheme(
      bodySmall:TextStyle(
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
      ),
    ),
    //app bar theme
    appBarTheme: const AppBarTheme(
      color: Color(0xfffafbfd),
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),

    ),
    //page theme
    scaffoldBackgroundColor: const Color(0xffedf1f2),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xffc4def7),
      foregroundColor: Color(0xff538fd8),
      elevation: 0,
      splashColor: Color(0xff355c8b),
    ),

  );

  static ThemeData mainDarkTheme = ThemeData(

    //font theme
    fontFamily: 'HuaWeiSans',
    textTheme: const TextTheme(
      bodySmall:TextStyle(
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
      ),
    ),

    //app bar theme
    appBarTheme: const AppBarTheme(
      color: Color(0xff292a3c),
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    //page theme
    scaffoldBackgroundColor: const Color(0xff141527),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff417368),
      foregroundColor: Colors.white,
      elevation: 0,
      splashColor: Color(0xff6cbfad),
    ),

  );

}
