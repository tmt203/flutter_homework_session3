import 'package:flutter/material.dart';
import 'attributes.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({
    Key? key,
    required this.titleText,
    required this.titleFont,
  }) : super(key: key);

  final String titleText;
  final TextStyle titleFont;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 0, 25, 0),
      child: Text(
        titleText,
        textAlign: TextAlign.center,
        style: textStyleForUrbanistFont(
          titleFont,
          titleColor,
        ),
      ),
    );
  }
}
