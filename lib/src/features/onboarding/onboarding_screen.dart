import 'package:flutter/material.dart';
import '../supports/main_title.dart';
import '../supports/attributes.dart';
import '../supports/main_button.dart';

// Onboarding Screen
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Main image
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              width: 300,
              height: 300,
              child: Image.asset(imagePath),
            ),

            // Main title
            const SizedBox(height: 33),
            Column(
              children: [
                MainTitle(titleText: title, titleFont: titleFont),
                const SizedBox(height: 20),
                MainTitle(titleText: subTitle, titleFont: subTitleFont),
              ],
            ),
            // Slash (not completed yet)
            const SizedBox(height: 10),

            // Buttons
            const SizedBox(height: 57),
            const MainButton(text: 'GET STARTED'),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
