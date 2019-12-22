import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      headline: CustomTextStyle.headLine6.copyWith(
        color: Colors.white,
      ),
      overline: CustomTextStyle.overLine.copyWith(
        color: Hexcolor('#354350'),
      ),
      body2: CustomTextStyle.body2.copyWith(
        color: Color.fromRGBO(255, 255, 255, 0.6),
      ),
      title: CustomTextStyle.title.copyWith(
        color: Colors.white,
      ),
    ),
    appBarTheme: CustomAppbarTheme.appBarTheme.copyWith(
      color: Hexcolor('#354350'),
      iconTheme: CustomAppbarTheme.iconTheme.copyWith(
        color: Colors.white,
      ),
      textTheme: TextTheme(
        headline: CustomTextStyle.headLine6.copyWith(
          color: Colors.white,
        ),
      ),
    ),
  );
}

class CustomAppbarTheme {
  static IconThemeData iconTheme = IconThemeData(
    size: 24,
  );

  static AppBarTheme appBarTheme = AppBarTheme(
    elevation: 1,
    iconTheme: iconTheme,
    textTheme: TextTheme(
      title: CustomTextStyle.headLine6,
    ),
  );
}

class CustomTextStyle {
  static TextStyle headLine6 = TextStyle(
    fontSize: 20,
    letterSpacing: 0.25,
    fontFamily: 'Roboto Regular',
  );
  static TextStyle body2 = TextStyle(
    letterSpacing: 0.25,
    fontFamily: 'Roboto Regular',
    fontSize: 14,
  );

  static TextStyle title = TextStyle(
    letterSpacing: 0.15,
    fontFamily: 'Roboto Regular',
    fontSize: 16,
  );

  static TextStyle overLine = TextStyle(
    fontSize: 12,
    fontFamily: 'Roboto Medium',
    fontWeight: FontWeight.w500,
    letterSpacing: 2,
  );
}
