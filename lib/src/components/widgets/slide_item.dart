import 'package:flutter/material.dart';
import '../../components/widgets/main_title.dart';
import '../../components/constants/attributes.dart';
import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  const SlideItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Main image
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          width: 300,
          height: 300,
          child: Image.asset(slideList[index].imagePath),
        ),
        // Main title
        const SizedBox(height: 33),
        MainTitle(titleText: slideList[index].title, titleFont: titleFont),
        const SizedBox(height: 20),
        MainTitle(
            titleText: slideList[index].subTitle, titleFont: subTitleFont),
      ],
    );
  }
}
