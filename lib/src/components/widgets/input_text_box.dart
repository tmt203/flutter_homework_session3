import 'package:flutter/material.dart';

class InputTextBox extends StatelessWidget {
  const InputTextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.white,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "What are you looking for?",
          hintStyle: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(height: 1.43, color: const Color(0xFFB7B7B7)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
