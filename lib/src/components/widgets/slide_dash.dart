import 'package:flutter/material.dart';
import '../../components/constants/attributes.dart';

class SlashCustomWidget extends StatelessWidget {
  const SlashCustomWidget({Key? key, required this.index}) : super(key: key);
  final int index;

  List<Widget> getCustomSlash(int index) {
    return slashList[index];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: getCustomSlash(index),
    );
  }
}

List<Widget> slashTypes = [
  Container(
    height: 3,
    width: 50,
    color: slideDashColor,
  ),
  Stack(
    children: [
      Container(
        height: 3,
        width: 50,
        color: slideDashColor,
      ),
      Container(
        height: 3,
        width: 25,
        color: titleColor,
      ),
    ],
  ),
  Stack(
    children: [
      Container(
        height: 3,
        width: 50,
        color: slideDashColor,
      ),
      Container(
        height: 3,
        width: 50,
        color: titleColor,
      ),
    ],
  ),
];
Widget space = const SizedBox(width: 5);
final List<List<Widget>> slashList = [
  [slashTypes[1], space, slashTypes[0], space, slashTypes[0]],
  [slashTypes[2], space, slashTypes[2], space, slashTypes[0]],
  [slashTypes[2], space, slashTypes[2], space, slashTypes[1]],
];
