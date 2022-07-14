import 'package:flutter/material.dart';

class SignInTitle extends StatelessWidget {
  const SignInTitle({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 30.0,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
