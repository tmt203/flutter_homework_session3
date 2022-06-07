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

const titleAccountStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w700,
  wordSpacing: 0.03,
  height: (45 / 30), // line height = fontsize * height
);

const subTitleAccountStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  wordSpacing: 0.01,
  height: (24 / 14), // line height = fontsize * height
);

TextStyle textStyleForUrbanistFont(
    {required TextStyle textStyle, required Color textColor}) {
  return GoogleFonts.urbanist(textStyle: textStyle, color: textColor);
}

// context
const titleText1 = "Enjoy The New Arrival Product";
const titleText2 = "Guaranteed Safe Delivery";
const titleText3 = "Goods Arrived\n On Time";
const subTitleText =
    "Get your dream item easily and safely with\n Shoesly. and get other interesting offers";
const titleLogin = "Sign In";
const subTitleLogin = "Please sign up to your Shoesly Account";

// icons path
const mainImagePath1 = "assets/images/hinh1.png";
const mainImagePath2 = "assets/images/hinh2.png";
const mainImagePath3 = "assets/images/hinh3.png";
const googleIconPath = "assets/icons/google.png";
const fbIconPath = "assets/icons/facebook.png";

// Buttons

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
      // home: const MyHomePage(
      //   imagePath: mainImagePath3, // mainImagePath2 mainImagePath3
      //   title: titleText3, // titleText2 titleText3
      //   subTitle: subTitleText,
      // ),
      home: const SignIn(
        title: "Sign In",
        subTitle: "Please sign up to your Shoesly Account",
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Main interface 1
class MyHomePage extends StatelessWidget {
  const MyHomePage({
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
          ],
        ),
      ),
    );
  }
}

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
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

// Sign in interface
class SignIn extends StatelessWidget {
  const SignIn({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 92),
            Text(
              title,
              style: textStyleForUrbanistFont(
                textStyle: titleAccountStyle,
                textColor: titleColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              subTitle,
              style: textStyleForUrbanistFont(
                textStyle: subTitleAccountStyle,
                textColor: subTitleColor,
              ),
            ),
            const SizedBox(height: 71),
            const Text("Email"),
            const TextField(
              style: subTitleFont,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: titleColor),
                ),
                contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              ),
            ),
            const SizedBox(height: 30),
            const Text("Password"),
            TextField(
              style: subTitleFont,
              decoration: InputDecoration(
                suffixIcon: Image.asset("assets/icons/eye.png"),
                contentPadding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              ),
            ),
            const SizedBox(height: 186),
            const Center(child: MainButton(text: "SIGN IN")),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Join with us.", style: textStyleForUrbanistFont(textStyle: textStyle, textColor: textColor),
                  TextSpan(text: "Create Account")
                ]
              ),
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: const Color(0xFFE7E7E7)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(iconPath),
          const SizedBox(width: 8),
          Text(
            text,
            style: textStyleForUrbanistFont(textStyle: textButtonFont, textColor: titleColor),
            // style: GoogleFonts.urbanist(
            //   textStyle: textButtonFont,
            //   color: titleColor,
            // ),
          ),
        ],
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 0, 25, 0),
      child: Text(
        titleText,
        textAlign: TextAlign.center,
        style: GoogleFonts.urbanist(
          textStyle: titleFont,
        ),
      ),
    );
  }
}
