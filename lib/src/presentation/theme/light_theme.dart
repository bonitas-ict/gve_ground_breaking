
import 'package:flutter/material.dart';
import 'colors.dart';

///LIGHT THEMEING SETUP AND MANAGMENT HAPPENS HERE
class LightTheme{
  static ThemeData day() {
    final base = ThemeData.light();
    return base.copyWith(
      buttonTheme: const ButtonThemeData().copyWith(buttonColor: Colors.pink),
      textTheme: _buildAppLightTextTheme(base.textTheme),
      bottomNavigationBarTheme:const  BottomNavigationBarThemeData(
        selectedItemColor: Color(0xFF707070),
        unselectedItemColor: Color(0xFFCCCCCC),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: TextStyle(color: Colors.green),
        unselectedLabelStyle: TextStyle(color: Colors.greenAccent),
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.white70,
      ),
    );
  }
}

TextTheme _buildAppLightTextTheme(TextTheme base){
  return base.copyWith(
    
    headline1:const TextStyle(
      color: Color(0xFF598E48),
      fontSize: 96.0,
      fontFamily: 'Coco'
    ),
    headline2: const TextStyle(
      color: GVEColors.black900,
      fontSize: 60,
      letterSpacing: -0.5,
      fontFamily: 'Frank'
    ),
    headline3: const TextStyle(
      color: GVEColors.black900,
      fontSize: 48,
      fontFamily: 'Frank'
    ),
    headline4: const TextStyle(
      color: Color(0xFF598E48),
      fontSize: 22,
      fontFamily: 'Book',
      letterSpacing: 0.25
    ),
    headline5:const TextStyle(
      color: Color(0xFF598E48),
      fontSize: 19,
      letterSpacing: 0.15,
      fontFamily: 'Frank',
    ),
    headline6: const TextStyle(
      color: GVEColors.black900,
      fontSize: 20,
      letterSpacing: 0.15,
      fontFamily: 'Frank',
    ),
    subtitle1: const TextStyle(
      color: Color(0xFF598E48),
      fontSize: 16,
      letterSpacing: 0.15,
      fontFamily: 'Book',
    ), 
    subtitle2: const TextStyle(
      color: Color(0xFF598E48),
      fontSize: 16,
      letterSpacing: 0.15,
      fontFamily: 'Frank',
    ), 
    bodyText1: const TextStyle(
      color: GVEColors.black900,
      fontSize: 16,
      letterSpacing: 0.5,
      fontFamily: 'Book',
    ), 
    bodyText2: const TextStyle(
      color: GVEColors.black900,
      fontSize: 14,
      letterSpacing: 0.25,
      fontFamily: 'Book',
    ), 
    button: const TextStyle(
      color: GVEColors.black900,
      fontSize: 16,
      letterSpacing: 1.25,
      fontFamily: 'Book',
    ), 
    caption: const TextStyle(
      color: Color(0xFF598E48),
      fontSize: 14,
      letterSpacing: 0.4,
      fontFamily: 'Book',
    ), 
    overline: const TextStyle(
      color: Color(0xFF598E48),
      fontSize: 16,
      letterSpacing: 1.5,
      fontFamily: 'Book',
    ),
  );
}