// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:flutter/material.dart';
import '../colors/dark_colors.dart';
import 'dart:io';
import '../colors/colors.dart';
import '../dimensions/dimensions.dart';

const fontFamily = "Poppins"; // change as you wish

/// -------------- App Theme -------------- ///
final lightTheme = ThemeData(
  fontFamily: fontFamily,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.light,
  primaryColor: DesignColors.primaryColor,
  scaffoldBackgroundColor: DesignColors.scaffoldBackgroundColor,
  colorScheme: const ColorScheme(
    primary: DesignColors.primaryColor,
    secondary: DesignColors.secondaryColor,
    surface: DesignColors.scaffoldBackgroundColor,
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onError: Colors.red,
    brightness: Brightness.light,
  ),
  textTheme: textTheme(),
  elevatedButtonTheme: elevatedButtonTheme(),
  outlinedButtonTheme: outlinedButtonTheme(),
  textButtonTheme: textButtonTheme(),
  pageTransitionsTheme: pageTransitionsTheme(),
);

/// -------------- Page Transitions Animations -------------- ///
PageTransitionsTheme pageTransitionsTheme() => const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    );

/// ---------------------- Text Theme ---------------------- ///
TextTheme textTheme({bool darkMode = false}) {
  final textColor = darkMode ? DesignColorsDark.textColor : DesignColors.textColor;
  return TextTheme(
    bodySmall: TextStyle(fontSize: smallText, fontWeight: FontWeight.w400, color: textColor),
    bodyMedium: TextStyle(fontSize: normalText, fontWeight: FontWeight.w400, color: textColor),
    bodyLarge: TextStyle(fontSize: largeText, fontWeight: FontWeight.w500, color: textColor),
    titleSmall: TextStyle(fontSize: smallText, fontWeight: FontWeight.w500, color: textColor),
    titleMedium: TextStyle(fontSize: mediumText, fontWeight: FontWeight.w500, color: textColor),
    titleLarge: TextStyle(fontSize: largeText, fontWeight: FontWeight.w600, color: textColor),
  );
}

TextStyle outlinedButtonTextStyle({bool darkMode = false}) {
  final primaryColor = darkMode ? DesignColorsDark.primaryColor : DesignColors.primaryColor;
  return TextStyle(
    color: primaryColor,
    fontSize: 14,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
  );
}

TextStyle textButtonTextStyle({bool darkMode = false}) {
  final primaryColor = darkMode ? DesignColorsDark.primaryColor : DesignColors.primaryColor;
  return TextStyle(
    color: primaryColor,
    fontSize: 20,
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
  );
}

TextStyle titleStyle(ThemeData theme) => TextStyle(
      color: theme.primaryColor,
      fontSize: normalText,
      fontWeight: FontWeight.w500,
    );

/// ----------------- [TextFormField] default styles ----------------- ///
TextStyle hintStyle() => const TextStyle(fontSize: smallText, color: DesignColors.grey);

TextStyle errorStyle() => const TextStyle(fontSize: smallText, color: Colors.red);

TextStyle labelStyle() => const TextStyle(
      fontSize: smallText,
      fontWeight: FontWeight.w500,
    );

TextStyle textFieldStyle() => const TextStyle(fontSize: 15, fontWeight: FontWeight.w500);

/// ----------------- [TextFormField] default border ----------------- ///
OutlineInputBorder textFormFieldEnabledBorder() => OutlineInputBorder(
      borderSide: const BorderSide(color: DesignColors.grey, width: 0.8),
      borderRadius: BorderRadius.circular(textFormFieldRadius),
    );

/// ----------------- [TextFormField] enabled border ----------------- ///
OutlineInputBorder textFormFieldFocusedBorder(ThemeData themeData) => OutlineInputBorder(
      borderSide: BorderSide(color: themeData.primaryColor, width: 2),
      borderRadius: BorderRadius.circular(textFormFieldRadius),
    );

/// ----------------- [TextFormField] error border ----------------- ///
OutlineInputBorder textFormFieldErrorBorder(ThemeData themeData) => OutlineInputBorder(
      borderSide: BorderSide(color: themeData.colorScheme.onError, width: 2),
      borderRadius: BorderRadius.circular(textFormFieldRadius),
    );

InputDecoration textInputDecoration(ThemeData theme) => InputDecoration(
      labelStyle: labelStyle(),
      hintStyle: hintStyle(),
      errorStyle: errorStyle(),
      enabledBorder: textFormFieldEnabledBorder(),
      focusedBorder: textFormFieldFocusedBorder(theme),
      errorBorder: textFormFieldErrorBorder(theme),
      focusedErrorBorder: textFormFieldErrorBorder(theme),
      disabledBorder: textFormFieldEnabledBorder(),
      border: textFormFieldEnabledBorder(),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      isDense: true,
      isCollapsed: true,
      filled: true,
      fillColor: theme.scaffoldBackgroundColor,
    );

/// -------------------------------------------------------- ///

/// -------------------- Buttons Theme -------------------- ///
TextButtonThemeData textButtonTheme({bool darkMode = false}) {
  final primaryColor = darkMode ? DesignColorsDark.primaryColor : DesignColors.primaryColor;
  return TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all<Color>(primaryColor),
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      shape: WidgetStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(buttonCorner)),
        ),
      ),
      textStyle: WidgetStateProperty.all<TextStyle>(textButtonTextStyle(darkMode: darkMode)),
    ),
  );
}

OutlinedButtonThemeData outlinedButtonTheme({bool darkMode = false}) {
  final primaryColor = darkMode ? DesignColorsDark.primaryColor : DesignColors.primaryColor;
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStateProperty.all<TextStyle>(outlinedButtonTextStyle(darkMode: darkMode)),
      foregroundColor: WidgetStateProperty.all<Color>(primaryColor),
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
      side: WidgetStateProperty.all<BorderSide>(BorderSide(color: primaryColor)),
      padding: WidgetStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.all(buttonPadding)),
      shape: WidgetStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(buttonCorner)),
        ),
      ),
    ),
  );
}

ElevatedButtonThemeData elevatedButtonTheme({bool darkMode = false}) {
  final primaryColor = darkMode ? DesignColorsDark.primaryColor : DesignColors.primaryColor;
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      surfaceTintColor: primaryColor,
      padding: const EdgeInsets.all(buttonPadding),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(buttonCorner))),
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

/// -------------------------------------------------------- ///

/// -------------------- TextStyles -------------------- ///
const veryLargeTextStyle = TextStyle(fontSize: largeText, fontWeight: FontWeight.w700);
const largeTextStyle = TextStyle(fontSize: mediumText, fontWeight: FontWeight.w600);
const mediumTextStyle = TextStyle(fontSize: mediumText, fontWeight: FontWeight.w500);
const normalTextStyle = TextStyle(fontSize: normalText, fontWeight: FontWeight.w500);
const smallTextStyle = TextStyle(fontSize: smallText, fontWeight: FontWeight.w400);
const verySmallTextStyle = TextStyle(fontSize: verySmallText, fontWeight: FontWeight.w400);
const titleTextStyle = TextStyle(fontSize: mediumText, fontWeight: FontWeight.w600);

/// -------------------------------------------------------- ///

/// ignore bottom padding on [Platform.isIOS]
EdgeInsets get adaptivePadding => const EdgeInsets.all(layoutPadding).copyWith(
      bottom: Platform.isIOS ? 0 : layoutPadding,
    );
