import 'package:flutter/material.dart';
import 'src/features/onboarding/onboarding_screen.dart';
import 'src/features/supports/attributes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageView(
        scrollDirection: Axis.horizontal,
        children: const [
          OnboardingScreen(
            imagePath: mainImagePath1,
            title: titleText1,
            subTitle: subTitleText,
          ),
          OnboardingScreen(
            imagePath: mainImagePath2,
            title: titleText2,
            subTitle: subTitleText,
          ),
          OnboardingScreen(
            imagePath: mainImagePath3,
            title: titleText3,
            subTitle: subTitleText,
          ),
        ],
      ),

      // home: const OnboardingScreen(
      //   imagePath: mainImagePath3, // mainImagePath2 mainImagePath3
      //   title: titleText3, // titleText2 titleText3
      //   subTitle: subTitleText,
      // ),
      // home: const SignIn(
      //   title: "Sign In",
      //   subTitle: "Please sign up to your Shoesly Account",
      // ),
      debugShowCheckedModeBanner: false,
    );
  }
}
