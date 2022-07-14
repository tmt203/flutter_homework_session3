import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: base.headline1?.copyWith(
        fontFamily: 'Urbanist-Bold',
        fontSize: 36.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
        letterSpacing: 0.01,
      ),
      headline2: base.headline2?.copyWith(
        fontFamily: 'Urbanist-Regular',
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: const Color(0xFF6F6F6F),
        letterSpacing: 0.01,
      ),
      button: base.button?.copyWith(
        fontFamily: 'Urbanist-Bold',
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.01,
      ),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Colors.white,
  );
}
