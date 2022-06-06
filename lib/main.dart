import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// colors
const titleColor = Color(0xFF101010);
const subTitleColor = Color(0xFF6F6F6F);

// fonts
const titleFont = TextStyle(
  fontSize: 36,
  color: titleColor,
  fontWeight: FontWeight.w600,
  height: (46 / 36), // line height = fontsize * height
);

const subTitleFont = TextStyle(
  fontSize: 14,
  color: subTitleColor,
  fontWeight: FontWeight.w400,
  wordSpacing: 0.01,
  height: (24 / 14), // line height = fontsize * height
);

const textButtonFont = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  wordSpacing: 0.01,
  height: (16.8 / 14), // line height = fontsize * height
);

// context
const titleText = "Enjoy The New\nArrival Product";
const subTitleText =
    "Get your dream item easily and safely with\n Shoesly. and get other interesting offers";

// icons path
const googleIconPath = "assets/icons/google.png";
const fbIconPath = "assets/icons/facebook.png";

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
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
              child: Image.asset("assets/images/hinh1.png"),
            ),

            // Main title
            //const SizedBox(height: 33),
            Column(
              children: const [
                MainTitle(titleText: titleText, titleFont: titleFont),
                SizedBox(height: 20),
                MainTitle(titleText: subTitleText, titleFont: subTitleFont),
              ],
            ),
            // Slash (not completed yet)
            const SizedBox(height: 50),

            // Buttons
            const SizedBox(height: 57),
            Column(
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
                      horizontal: 111,
                    ),
                    child: Text(
                      'GET STARTED',
                      style: GoogleFonts.urbanist(
                        textStyle: textButtonFont,
                        color: const Color(0xFFffffff),
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: const Color(0xFFE7E7E7)),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(iconPath),
            const SizedBox(width: 8),
            Text(
              text,
              style: GoogleFonts.urbanist(
                textStyle: textButtonFont,
                color: titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainTitle extends StatelessWidget {
  const MainTitle({
    Key? key,
    required this.titleText,
    required this.titleFont,
  }) : super(key: key);

  final String titleText;
  final TextStyle titleFont;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          titleText,
          style: GoogleFonts.urbanist(
            textStyle: titleFont,
          ),
        ),
      ],
    );
  }
}
