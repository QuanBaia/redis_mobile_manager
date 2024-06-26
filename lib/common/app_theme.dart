import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

// app 主题管理
class AppTheme {
  static FlexSubThemesData subThemesData = const FlexSubThemesData(

    thinBorderWidth: 2.0,
    filledButtonRadius: 10.0,
    elevatedButtonRadius: 10.0,
    outlinedButtonRadius: 10.0,
    toggleButtonsRadius: 10.0,
    toggleButtonsBorderWidth: 1.0,
    segmentedButtonRadius: 10.0,
    segmentedButtonBorderWidth: 1.0,


    switchSchemeColor: SchemeColor.tertiary,
    switchThumbSchemeColor: SchemeColor.tertiaryContainer,
    switchThumbFixedSize: true,
    checkboxSchemeColor: SchemeColor.tertiary,
    radioSchemeColor: SchemeColor.onTertiaryContainer,
    unselectedToggleIsColored: true,
    sliderBaseSchemeColor: SchemeColor.tertiaryContainer,
    sliderIndicatorSchemeColor: SchemeColor.onSurfaceVariant,
    sliderValueTinted: true,
    sliderValueIndicatorType: FlexSliderIndicatorType.drop,
    sliderShowValueIndicator: ShowValueIndicator.always,
    inputDecoratorBorderType: FlexInputBorderType.underline,
    inputDecoratorRadius: 15.0,
    inputDecoratorUnfocusedHasBorder: false,
    fabUseShape: true,
    fabRadius: 10.0,
    chipSchemeColor: SchemeColor.surfaceTint,
    chipSelectedSchemeColor: SchemeColor.surfaceTint,
    chipDeleteIconSchemeColor: SchemeColor.onSurface,
    chipRadius: 10.0,
    alignedDropdown: true,
    tooltipRadius: 10,
    tooltipSchemeColor: SchemeColor.outlineVariant,
    useInputDecoratorThemeInDialogs: true,
    snackBarRadius: 10,
    snackBarElevation: 20,
    appBarBackgroundSchemeColor: SchemeColor.onTertiary,
    appBarScrolledUnderElevation: 20.0,



    tabBarUnselectedItemOpacity: 1.00,
    tabBarIndicatorWeight: 5,
    tabBarIndicatorTopRadius: 9,



    drawerRadius: 10.0,
    drawerWidth: 300.0,
    drawerIndicatorRadius: 20.0,
    drawerIndicatorSchemeColor: SchemeColor.onTertiary,
    bottomSheetElevation: 20.0,
    bottomSheetModalElevation: 20.0,
    navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedLabel: false,
    navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
    navigationBarMutedUnselectedIcon: false,
    navigationBarIndicatorSchemeColor: SchemeColor.onTertiary,
    navigationBarIndicatorOpacity: 1.00,
    navigationBarIndicatorRadius: 16.0,
    navigationBarBackgroundSchemeColor: SchemeColor.onTertiary,
    navigationBarElevation: 24.0,
    navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
    navigationRailUnselectedLabelSchemeColor: SchemeColor.tertiary,
    navigationRailSelectedIconSchemeColor: SchemeColor.onBackground,
    navigationRailUnselectedIconSchemeColor: SchemeColor.tertiary,
  );

  static ThemeData mainTheme = FlexThemeData.light(
      fontFamily: "HuaWeiSans",
      scheme: FlexScheme.blue,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffoldVariantDialog,
      blendLevel: 36,
      lightIsWhite: true,
      swapColors: true,
      surfaceTint: const Color(0xff1976d2),
      subThemesData: subThemesData,
      keyColors: const FlexKeyColors(
        useSecondary: true,
        useTertiary: true,
        keepPrimary: true,
        keepSecondary: true,
        keepTertiary: true,
        keepPrimaryContainer: true,
        keepSecondaryContainer: true,
        keepTertiaryContainer: true,
      ),
      visualDensity: VisualDensity.standard,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
          }));

  static ThemeData mainDarkTheme = FlexThemeData.dark(
      fontFamily: "HuaWeiSans",
      scheme: FlexScheme.green,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 40,
      appBarElevation: 20.0,
      darkIsTrueBlack: true,
      swapColors: true,
      surfaceTint: const Color(0xff2196f3),
      subThemesData: subThemesData,
      keyColors: const FlexKeyColors(
        useSecondary: true,
        useTertiary: true,
      ),

      visualDensity: VisualDensity.standard,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: OpenUpwardsPageTransitionsBuilder()
          }));
}
