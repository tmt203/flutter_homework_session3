import 'package:flutter/material.dart';

class BannerSlideDash extends StatelessWidget {
  const BannerSlideDash({Key? key, required this.index}) : super(key: key);

  final int index;

  // List<Widget> getDashList(int index) {
  //   if (index > 0) {
  //     _swap(dashList[0], dashList[index]);
  //   }
  //   return dashList;
  // }

  // void _swap(Widget a, Widget b) {
  //   Widget tmp = a;
  //   a = b;
  //   b = tmp;
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dashList,
    );
  }
}

final List<Widget> dashList = [
  Container(
    margin: const EdgeInsets.only(right: 4),
    height: 2,
    width: 40,
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      color: Colors.white,
    ),
  ),
  Container(
    margin: const EdgeInsets.only(right: 4),
    height: 2,
    width: 6,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      color: Colors.white.withOpacity(0.4),
    ),
  ),
  Container(
    margin: const EdgeInsets.only(right: 4),
    height: 2,
    width: 6,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      color: Colors.white.withOpacity(0.4),
    ),
  ),
  Container(
    margin: const EdgeInsets.only(right: 4),
    height: 2,
    width: 6,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      color: Colors.white.withOpacity(0.4),
    ),
  ),
];
