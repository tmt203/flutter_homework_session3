import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// colors
const titleColor = Color(0xFF101010);
const subTitleColor = Color(0xFF6F6F6F);

// fonts
const titleFont = TextStyle(
  fontSize: 36,
  color: titleColor,
  fontWeight: FontWeight.w600,
  height: (46 / 36), // line height = fontsize * height
);

const subTitleFont = TextStyle(
  fontSize: 14,
  color: subTitleColor,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.01,
  height: (24 / 14), // line height = fontsize * height
);

const textButtonFont = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.01,
  height: (16.8 / 14), // line height = fontsize * height
);

const titleAccountStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.03,
  height: (45 / 30), // line height = fontsize * height
);

const subTitleAccountStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.01,
  height: (24 / 14), // line height = fontsize * height
);

const footerLoginStyle1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.01,
    height: (16.8 / 14));

const footerLoginStyle2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.01,
    height: (24 / 14));

TextStyle textStyleForUrbanistFont([TextStyle? textStyle, Color? textColor]) {
  return GoogleFonts.urbanist(textStyle: textStyle, color: textColor);
}

// context
const titleText1 = "Enjoy The New Arrival Product";
const titleText2 = "Guaranteed Safe Delivery";
const titleText3 = "Goods Arrived\n On Time";
const subTitleText =
    "Get your dream item easily and safely with\n Shoesly. and get other interesting offers";
const titleLogin = "Sign In";
const subTitleLogin = "Please sign up to your Shoesly Account";

// icons path
const mainImagePath1 = "assets/images/hinh1.png";
const mainImagePath2 = "assets/images/hinh2.png";
const mainImagePath3 = "assets/images/hinh3.png";
const googleIconPath = "assets/icons/google.png";
const fbIconPath = "assets/icons/facebook.png";

// Buttons