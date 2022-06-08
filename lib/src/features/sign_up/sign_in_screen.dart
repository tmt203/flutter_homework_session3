import 'package:flutter/material.dart';
import '../supports/attributes.dart';
import '../supports/main_button.dart';

// Sign in interface
class SignIn extends StatelessWidget {
  const SignIn({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 92),
              Text(
                title,
                style: textStyleForUrbanistFont(
                  titleAccountStyle,
                  titleColor,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                subTitle,
                style: textStyleForUrbanistFont(
                  subTitleAccountStyle,
                  subTitleColor,
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
              const SizedBox(height: 15), // Design 20
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Join with us, ",
                          style: textStyleForUrbanistFont(
                              footerLoginStyle1, subTitleColor)),
                      TextSpan(
                          text: "Create Account",
                          style: textStyleForUrbanistFont(
                              footerLoginStyle2, titleColor)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
