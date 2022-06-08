import 'package:flutter/material.dart';
import 'attributes.dart';

class FootButton extends StatelessWidget {
  const FootButton({
    Key? key,
    required this.iconPath,
    required this.text,
  }) : super(key: key);

  final String iconPath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: const Color(0xFFE7E7E7)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath),
          const SizedBox(width: 8),
          Text(
            text,
            style: textStyleForUrbanistFont(textButtonFont, titleColor),
          ),
        ],
      ),
    );
  }
}
