// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color GOZLE_COLOR = Color(0xff00acee);

  // lightPrimaryOne Color Swatch
  static const Color lightBackground = Color(0xffF5F5F5);

  static const Color lightPrimary = GOZLE_COLOR;

  // lightSecondary Color Swatch
  static const Color lightSecondaryHeader = Color(0xffE7E7E7);
  // lightAccent Color Swatch
  static const Color lightAccent = Color(0xfff6a547);
  // lightOnSurface Color Swatch
  static const Color lightOnSurface = Color(0xff000000);
  // lightSurface Color Swatch
  static const Color lightSurface = Color(0xffffffff);
  // lightSurfaceTint Color Swatch
  static const Color lightSurfaceTint = Color(0xfff2f2f2);
  // lightOutline Color Swatch
  static const Color lightOutline = Color(0x33000000);
  // lightComponentScrim Color Swatch
  static const Color lightComponentScrim = Color(0xb3000000);

  static const Color lightOverlayColor = Color(0x30E7E7E7);

  static const Color lightBorderColor = Color(0xFFBABCBE);

  static const Color lightDisabledColor = Color(0xFFBABCBE);

  static const Color lightBarColor = Colors.white;

  // lightPrimaryOne Color Swatch
  static const Color darkPrimary = Colors.white;

  static const Color darkBackground = Color.fromARGB(255, 25, 25, 25);
  // lightSecondary Color Swatch
  static const Color darkSecondaryHeader = Color.fromARGB(255, 45, 45, 45);

  static const Color darkBarColor = Color.fromARGB(255, 35, 35, 35);
  // lightAccent Color Swatch
  static const Color darkAccent = Color(0xfff6a547);
  // lightOnSurface Color Swatch
  static const Color darkOnSurface = Color(0xff000000);
  // lightSurface Color Swatch
  static const Color darkSurface = Color(0xffffffff);
  // lightSurfaceTint Color Swatch
  static const Color darkSurfaceTint = Color(0xfff2f2f2);
  // lightOutline Color Swatch
  static const Color darkOutline = Color(0x33000000);
  // lightComponentScrim Color Swatch
  static const Color darkComponentScrim = Color(0xb3000000);

  static const Color darkOverlayColor = Color(0x30E7E7E7);

  static const Color darkBorderColor = Color(0xFFBABCBE);

  static const Color darkIconsColor = Color(0xFFFFFFFF);

  static const Color darkDisabledColor = Color.fromARGB(255, 120, 120, 120);
}

class AppTheme {
  static const String fontFamily = 'Inter';

  static ThemeData lightTheme = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    scaffoldBackgroundColor: AppColors.lightBackground,
    primaryColor: AppColors.lightPrimary,
    colorScheme: const ColorScheme.light(
      primary: AppColors.lightPrimary,
      background: AppColors.lightBackground,
      secondary: AppColors.lightPrimary,
      surface: Colors.white,
      surfaceTint: Colors.white,
      brightness: Brightness.light,
    ),
    disabledColor: AppColors.lightDisabledColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightBarColor,
      surfaceTintColor: AppColors.lightBarColor,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
      ),
    ),
    chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    secondaryHeaderColor: AppColors.lightSecondaryHeader,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        color: Colors.black54,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
        color: Colors.black54,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: const MaterialStatePropertyAll(Colors.white),
        backgroundColor: const MaterialStatePropertyAll(AppColors.GOZLE_COLOR),
        overlayColor:
            const MaterialStatePropertyAll(AppColors.lightOverlayColor),
        shape: MaterialStatePropertyAll(defaultShape),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: AppColors.lightSecondaryHeader,
    ),
    dividerColor: AppColors.lightSecondaryHeader,
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      showDragHandle: true,
    ),
    dialogTheme: DialogTheme(
      shape: defaultShape,
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
      ),
      contentTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: AppColors.lightBarColor,
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.transparent,
      backgroundColor: AppColors.lightBarColor,
      surfaceTintColor: AppColors.lightBarColor,
      labelTextStyle: MaterialStateProperty.resolveWith(
        (states) => TextStyle(
          color: states.contains(MaterialState.selected)
              ? AppColors.GOZLE_COLOR
              : lightTheme.disabledColor,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    dialogBackgroundColor: AppColors.lightBarColor,
  );

  static ThemeData darkTheme = ThemeData.dark(
    useMaterial3: true,
  ).copyWith(
    scaffoldBackgroundColor: AppColors.darkBackground,
    primaryColor: AppColors.darkPrimary,
    colorScheme: const ColorScheme.light(
      primary: AppColors.darkPrimary,
      background: AppColors.darkBackground,
      secondary: AppColors.darkPrimary,
      brightness: Brightness.dark,
    ),
    disabledColor: AppColors.darkDisabledColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBarColor,
      surfaceTintColor: AppColors.darkBarColor,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.darkIconsColor),
    chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    secondaryHeaderColor: AppColors.darkSecondaryHeader,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: TextStyle(
        color: Colors.white54,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      foregroundColor: const MaterialStatePropertyAll(Colors.white),
      backgroundColor: const MaterialStatePropertyAll(AppColors.GOZLE_COLOR),
      overlayColor: const MaterialStatePropertyAll(AppColors.lightOverlayColor),
      shape: MaterialStatePropertyAll(defaultShape),
    )),
    dividerTheme: const DividerThemeData(
      color: AppColors.darkSecondaryHeader,
    ),
    dividerColor: AppColors.darkSecondaryHeader,
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      surfaceTintColor: AppColors.darkBarColor,
      backgroundColor: AppColors.darkBarColor,
      showDragHandle: true,
    ),
    dialogTheme: DialogTheme(
      shape: defaultShape,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
      ),
      contentTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: AppColors.darkBarColor,
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.transparent,
      backgroundColor: AppColors.darkBarColor,
      surfaceTintColor: AppColors.darkBarColor,
      iconTheme: MaterialStateProperty.resolveWith(
        (states) => IconThemeData(
          color: states.contains(MaterialState.selected)
              ? AppColors.darkPrimary
              : darkTheme.disabledColor,
        ),
      ),
      labelTextStyle: MaterialStateProperty.resolveWith(
        (states) => TextStyle(
          color: states.contains(MaterialState.selected)
              ? AppColors.darkPrimary
              : darkTheme.disabledColor,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );

  static RoundedRectangleBorder defaultShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  );
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;
}
