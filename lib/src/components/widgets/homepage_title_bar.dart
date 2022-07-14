import 'package:flutter/material.dart';

class HomePageTitleBar extends StatelessWidget {
  const HomePageTitleBar({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(fontSize: 20, height: 1.25),
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.headline1!.copyWith(
              fontSize: 12, height: 1.53, color: const Color(0xFFB7B7B7)),
        ),
      ],
    );
  }
}
