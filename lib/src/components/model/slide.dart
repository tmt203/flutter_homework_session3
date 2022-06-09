import 'package:flutter/material.dart';

class Slide {
  final String imagePath;
  final String title;
  final String subTitle;

  Slide({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

final slideList = [
  Slide(
      imagePath: "assets/images/hinh1.png",
      title: "Enjoy The New Arrival Product",
      subTitle:
          "Get your dream item easily and safely with\n Shoesly. and get other interesting offers"),
  Slide(
      imagePath: "assets/images/hinh2.png",
      title: "Guaranteed Safe Delivery",
      subTitle:
          "Get your dream item easily and safely with\n Shoesly. and get other interesting offers"),
  Slide(
      imagePath: "assets/images/hinh3.png",
      title: "Goods Arrived\n On Time",
      subTitle:
          "Get your dream item easily and safely with\n Shoesly. and get other interesting offers"),
];
