
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

///LIGHT THEMEING SETUP AND MANAGMENT HAPPENS HERE
class LightTheme{
  static ThemeData day() {
    final base = ThemeData.light();
    return base.copyWith(
      buttonTheme: const ButtonThemeData().copyWith(buttonColor: Colors.pink),
      textTheme: _buildAppLightTextTheme(base.textTheme)
    );
  }
}

TextTheme _buildAppLightTextTheme(TextTheme base){
  return base.copyWith(
    headline1: GoogleFonts.roboto(
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5
    ),
    headline2: GoogleFonts.roboto(
      color: GVEColors.black900,
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5
    ),
    headline3: GoogleFonts.roboto(
      color: GVEColors.black900,
      fontSize: 48,
      fontWeight: FontWeight.w400
    ),
    headline4: GoogleFonts.roboto(
      color: GVEColors.black900,
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25
    ),
    headline5: GoogleFonts.roboto(
      color: const Color(0xFF598E48),
      fontSize: 24,
      fontWeight: FontWeight.w400
    ),
    headline6: GoogleFonts.roboto(
      color: GVEColors.black900,
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15
    ),
    subtitle1: GoogleFonts.gothicA1(
      color: const Color(0xFF598E48),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15
    ),
    subtitle2: GoogleFonts.roboto(
      color: GVEColors.black900,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1
    ),
    bodyText1: GoogleFonts.openSans(
      color: GVEColors.black900,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5
    ),
    bodyText2: GoogleFonts.openSans(
      color: GVEColors.black900,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25
    ),
    button: GoogleFonts.openSans(
      color: GVEColors.black900,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
    ),
    caption: GoogleFonts.openSans(
      color: GVEColors.black900,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4
    ),
    overline: GoogleFonts.openSans(
      color: const Color(0xFFCFCFCF),
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5
    ),
  );
}