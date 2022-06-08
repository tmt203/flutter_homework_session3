import 'package:flutter/material.dart';
import 'attributes.dart';
import 'foot_button.dart';

// Support class
class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Get started Button
        Container(
          width: 315,
          height: 50,
          decoration: BoxDecoration(
            color: titleColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.5,
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: textStyleForUrbanistFont(
                textButtonFont,
                const Color(0xFFffffff),
              ),
            ),
          ),
        ),

        // Footer Buttons
        const SizedBox(height: 20),
        SizedBox(
          width: 315,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              FootButton(iconPath: googleIconPath, text: "GOOGLE"),
              FootButton(iconPath: fbIconPath, text: "FACEBOOK"),
            ],
          ),
        ),
      ],
    );
  }
}
