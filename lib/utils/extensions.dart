import 'package:flutter/material.dart';

extension ColorScheme on BuildContext {
  Color primaryColor() => Theme.of(this).colorScheme.primary;
  Color onPrimaryColor() => Theme.of(this).colorScheme.onPrimary;
  Color secondaryColor() => Theme.of(this).colorScheme.secondary;
  Color onSecondaryColor() => Theme.of(this).colorScheme.onSecondary;
  Color onBackgroundColor() => Theme.of(this).colorScheme.onBackground;
  Color tertiaryColor() => Theme.of(this).colorScheme.tertiary;
}

extension MediaQueryExtension on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  double get screenWidth => screenSize.width;
  double widthPercentage(double percent) => screenWidth * (percent / 100);

  double get screenHeight => screenSize.height;
  double heightPercentage(double percent) => screenHeight * (percent / 100);
}
