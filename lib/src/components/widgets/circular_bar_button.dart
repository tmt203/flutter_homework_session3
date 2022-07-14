import 'package:flutter/material.dart';

class CircurlarBarButton extends StatelessWidget {
  const CircurlarBarButton({Key? key, required this.text, required this.func})
      : super(key: key);
  final String text;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 315,
      child: ElevatedButton(
        onPressed: () => func,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          primary: const Color(0xFF101010),
          textStyle: Theme.of(context).textTheme.button,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Text(
          text,
          style:
              Theme.of(context).textTheme.button!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
