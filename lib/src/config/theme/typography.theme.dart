import 'package:flutter/material.dart';

import 'color.theme.dart';

abstract class TypographyTextTheme {
  static const TextStyle heading1 = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w600,
    color: AppColorTheme.blackColor,
    fontFamily: 'assets/fonts/Poppins-Regular.ttf',
  );
  static const TextStyle heading2 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w600,
    color: AppColorTheme.blackColor,
  );
  static const TextStyle heading3 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w600,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );
  static const TextStyle heading4 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );
  static const TextStyle heading5 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );
  static const TextStyle heading6 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );
  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );
  static const TextStyle bodyXSmall = TextStyle(
    fontSize: 12,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );

  static const TextStyle titleLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );
  static const TextStyle titleMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );
  static const TextStyle titleSmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColorTheme.blackColor,
    fontFamily: 'Poppins',
  );
}
