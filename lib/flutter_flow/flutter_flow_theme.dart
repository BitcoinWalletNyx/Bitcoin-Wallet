// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? DarkModeTheme()
          : LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color primaryBtnText;
  Color lineColor;
  Color customColor1;
  Color btnText;
  Color successBackground;
  Color textSuccessBackground;
  Color navBarColor;
  Color background;
  Color warningBackground;
  Color mnemonicBorderColor;
  Color warningBtnText;
  Color customColor3;
  Color customColor4;
  Color white;

  TextStyle get title1 => GoogleFonts.getFont(
        'IBM Plex Sans',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  TextStyle get title2 => GoogleFonts.getFont(
        'IBM Plex Sans',
        color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22,
      );
  TextStyle get title3 => GoogleFonts.getFont(
        'IBM Plex Sans',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'IBM Plex Sans',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'IBM Plex Sans',
        color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'IBM Plex Sans',
        color: primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'IBM Plex Sans',
        color: secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF4B39EF);
  Color secondaryColor = const Color(0xFF39D2C0);
  Color tertiaryColor = const Color(0xFFEE8B60);
  Color alternate = const Color(0xFFFF5963);
  Color primaryBackground = const Color(0xFFF1F4F8);
  Color secondaryBackground = const Color(0xFFFFFFFF);
  Color primaryText = const Color(0xFF101213);
  Color secondaryText = const Color(0xFF57636C);

  Color primaryBtnText = Color(0xFFFFFFFF);
  Color lineColor = Color(0xFFE0E3E7);
  Color customColor1 = Color(0xFF4B39EF);
  Color btnText = Color(0xFFFFFFFF);
  Color successBackground = Color(0xFF108C4A);
  Color textSuccessBackground = Color(0xFFFFFFFF);
  Color navBarColor = Color(0xFF4B39EF);
  Color background = Color(0xFF1D2429);
  Color warningBackground = Color(0xFFF3E4E4);
  Color mnemonicBorderColor = Color(0x6095A1AC);
  Color warningBtnText = Color(0xFFB34A4A);
  Color customColor3 = Color(0xFFDF3F3F);
  Color customColor4 = Color(0xFF090F13);
  Color white = Color(0xFFFFFFFF);
}

class DarkModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF1A1F24);
  Color secondaryColor = const Color(0xFF39D2C0);
  Color tertiaryColor = const Color(0xFFEE8B60);
  Color alternate = const Color(0xFFFF5963);
  Color primaryBackground = const Color(0xFF1A1F24);
  Color secondaryBackground = const Color(0xFF101213);
  Color primaryText = const Color(0xFFFFFFFF);
  Color secondaryText = const Color(0xFF95A1AC);

  Color primaryBtnText = Color(0xFFFFFFFF);
  Color lineColor = Color(0xFF22282F);
  Color customColor1 = Color(0xFF4B39EF);
  Color btnText = Color(0xFFFFFFFF);
  Color successBackground = Color(0xFF1A1F24);
  Color textSuccessBackground = Color(0xFF090F13);
  Color navBarColor = Color(0xFFFFFFFF);
  Color background = Color(0xFF1D2429);
  Color warningBackground = Color(0xFF3A2426);
  Color mnemonicBorderColor = Color(0x484B39EF);
  Color warningBtnText = Color(0xFFE35858);
  Color customColor3 = Color(0xFFDF3F3F);
  Color customColor4 = Color(0xFF090F13);
  Color white = Color(0xFFFFFFFF);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    TextDecoration decoration,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
