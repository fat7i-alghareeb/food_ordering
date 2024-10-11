import 'package:flutter/material.dart';

const primaryColor = Color(0xFF78C4A4);
///////////////////////////////////////////////////////////////////
const lightOnPrimaryColor = Colors.white;
const lightSecondary = Color(0xFFF0ECE9);
const lightOnSecondary = Color(0xFF8A837D);
const lightTertiaryColor = Colors.white;
const lightBackgroundColor = Color(0Xfffaf7f5);
const lightOnBackgroundColor = Colors.black;
///////////////////////////////////////////////////////////////////
// const darkMainColor = Color(0xFF0e1621);
// const darkOnPrimaryColor = Colors.white;
// const darkNeutralColor = Color(0xFF17212b);

///////////////////////////////////////////////////////////////////
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  fontFamily: "Nunito",
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: primaryColor,
    selectionColor: lightOnBackgroundColor.withOpacity(0.25),
    selectionHandleColor: primaryColor,
  ),
  drawerTheme: const DrawerThemeData(backgroundColor: lightBackgroundColor),
  scaffoldBackgroundColor: lightBackgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: lightBackgroundColor,
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    primary: primaryColor,
    background: lightBackgroundColor,
    onBackground: lightOnBackgroundColor,
    onPrimary: lightOnPrimaryColor,
    tertiary: lightTertiaryColor,
    secondary: lightSecondary,
    onSecondary: lightOnSecondary,
  ),
  useMaterial3: true,
);
///////////////////////////////////////////////////////////////
// ThemeData darkMode = ThemeData(
//   brightness: Brightness.dark,
//   fontFamily: "oswald",
//   drawerTheme: const DrawerThemeData(backgroundColor: darkMainColor),
//   appBarTheme: const AppBarTheme(
//     backgroundColor: darkMainColor,
//   ),
//   textSelectionTheme: TextSelectionThemeData(
//     cursorColor: accentColor,
//     selectionColor: darkOnPrimaryColor.withOpacity(0.25),
//     selectionHandleColor: accentColor,
//   ),
//   primaryColor: darkMainColor,
//   scaffoldBackgroundColor: darkMainColor,
//   colorScheme: const ColorScheme.dark(
//     primary: darkMainColor,
//     onPrimary: darkOnPrimaryColor,
//     tertiary: darkNeutralColor,
//     secondary: accentColor,
//   ),
// );
