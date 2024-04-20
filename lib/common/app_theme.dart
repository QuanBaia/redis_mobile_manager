import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

// app 主题管理
class AppTheme {
 /* // main theme
  static ThemeData mainTheme = ThemeData.light().copyWith(
    //font theme
    textTheme: const TextTheme(
      bodySmall: TextStyle(
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
      ),
      titleLarge: TextStyle(
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        //灰色
        color: Color(0xff999999),
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
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),

    // menu theme
    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(0xfffafbfd),
    ),

    //page theme
    scaffoldBackgroundColor: const Color(0xffedf1f2),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xffc4def7),
      foregroundColor: Color(0xff538fd8),
      elevation: 0,
      splashColor: Color(0xff355c8b),
    ),

    // icon theme
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
  );



  static ThemeData mainDarkTheme = ThemeData.dark().copyWith(


    //font theme
    textTheme: const TextTheme(

        bodySmall: TextStyle(
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          color: Colors.white,
        ),
        titleLarge: TextStyle(
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          color: Colors.white,
        ),
        titleSmall: TextStyle(
          //灰色
          color: Colors.white,
        )),

    listTileTheme: const ListTileThemeData(
      titleTextStyle: TextStyle(
        color: Colors.white,
      ),
      subtitleTextStyle: TextStyle(
        color: Color(0xff999999),
      ),
      iconColor: Colors.white,
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
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),

    // menu theme
    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(0xff292a3c),
    ),

    //page theme
    scaffoldBackgroundColor: const Color(0xff141527),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xff417368),
      foregroundColor: Colors.white,
      elevation: 0,
      splashColor: Color(0xff6cbfad),
    ),

    // icon theme
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );*/


  static FlexSchemeColor lightScheme = FlexSchemeColor.from(
    primary: const Color(0xffffffff),



  );

  static ThemeData mainTheme = FlexThemeData.light( useMaterial3: true, fontFamily: 'HuaWeiSans' ,scheme: FlexScheme.sakura,
    subThemesData: const FlexSubThemesData(
      interactionEffects: false,
      tintedDisabledControls: false,
      blendOnColors: false,
      useTextTheme: true,
      inputDecoratorBorderType: FlexInputBorderType.underline,
      inputDecoratorUnfocusedBorderIsColored: false,
      alignedDropdown: true,
      tooltipRadius: 4,
      tooltipSchemeColor: SchemeColor.inverseSurface,
      tooltipOpacity: 0.9,
      useInputDecoratorThemeInDialogs: true,
      snackBarElevation: 6,
      snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
      navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
      navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
      navigationBarMutedUnselectedLabel: false,
      navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
      navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
      navigationBarMutedUnselectedIcon: false,
      navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
      navigationBarIndicatorOpacity: 1.00,
      navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
      navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
      navigationRailMutedUnselectedLabel: false,
      navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
      navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
      navigationRailMutedUnselectedIcon: false,
      navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
      navigationRailIndicatorOpacity: 1.00,
      navigationRailBackgroundSchemeColor: SchemeColor.surface,
      navigationRailLabelType: NavigationRailLabelType.none,
    ),
    keyColors: const FlexKeyColors(),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,

    swapLegacyOnMaterial3: true,);
  static ThemeData mainDarkTheme = FlexThemeData.dark( useMaterial3: true, fontFamily: 'HuaWeiSans',
    scheme: FlexScheme.sakura,
    usedColors: 7,
    surfaceMode: FlexSurfaceMode.highSurfaceLowScaffold,


    appBarStyle: FlexAppBarStyle.background,

    darkIsTrueBlack: true,
    subThemesData: const FlexSubThemesData(
      useTextTheme: true,
      elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
      elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
      segmentedButtonSchemeColor: SchemeColor.primary,
      inputDecoratorSchemeColor: SchemeColor.primary,

      inputDecoratorUnfocusedHasBorder: false,
      inputDecoratorPrefixIconSchemeColor: SchemeColor.primary,
      fabSchemeColor: SchemeColor.tertiary,
      useInputDecoratorThemeInDialogs: true,
      snackBarBackgroundSchemeColor: SchemeColor.inverseSurface,
      drawerIndicatorSchemeColor: SchemeColor.primary,
      bottomNavigationBarMutedUnselectedLabel: false,
      bottomNavigationBarMutedUnselectedIcon: false,
      bottomNavigationBarBackgroundSchemeColor: SchemeColor.surfaceVariant,
      navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
      navigationBarMutedUnselectedLabel: false,
      navigationBarSelectedIconSchemeColor: SchemeColor.background,
      navigationBarMutedUnselectedIcon: false,
      navigationBarIndicatorSchemeColor: SchemeColor.primary,

      navigationBarBackgroundSchemeColor: SchemeColor.background,

      navigationRailSelectedLabelSchemeColor: SchemeColor.primary,
      navigationRailMutedUnselectedLabel: false,
      navigationRailSelectedIconSchemeColor: SchemeColor.background,
      navigationRailMutedUnselectedIcon: false,
      navigationRailIndicatorSchemeColor: SchemeColor.primary,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    swapLegacyOnMaterial3: true,


  );



}
