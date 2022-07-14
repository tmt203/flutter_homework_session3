import 'package:flutter/material.dart';
import '../../components/widgets/input_text_box.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 54,
      margin: const EdgeInsets.fromLTRB(30, 64, 30, 30),
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: const Color(0xFFB7B7B7)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/icons/search-normal.png"),
          const SizedBox(width: 22),
          const SizedBox(
            width: 195,
            child: InputTextBox(),
          ),
          Image.asset("assets/icons/camera.png"),
        ],
      ),
    );
  }
}
