import 'package:flutter/material.dart';

// app 主题管理
class AppTheme {

  // main theme
  static ThemeData mainTheme = ThemeData(
    //font theme
    fontFamily: 'HuaWeiSans',

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

  );

  static ThemeData mainDarkTheme = ThemeData(

    //font theme
    fontFamily: 'HuaWeiSans',
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
    //text theme

  );

}
