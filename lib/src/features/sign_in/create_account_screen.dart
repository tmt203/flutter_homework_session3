import 'package:flutter/material.dart';
import '../../components/widgets/sign_in_title.dart';
import '../../components/widgets/foot_button.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  _openWelcomeScreen(BuildContext context) {
    Navigator.pushNamed(context, '/welcome');
  }

  _openSignInScreen(BuildContext context) {
    Navigator.pushNamed(context, '/sign_in');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 92),
              const SignInTitle(
                title: "Create Account",
                subTitle: "Please sign up to your Shoesly Account",
              ),
              const SizedBox(height: 38),
              Text(
                "Name",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              TextField(
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.black),
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Email",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              TextField(
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Password",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              TextField(
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.black),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/icons/eye.png"),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Your password must 8 or more characters",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 12.0, height: 1.53),
              ),
              const SizedBox(height: 30),
              Text(
                "Confirm Password",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              TextField(
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.black),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  suffixIcon: Image.asset("assets/icons/eye.png"),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Image.asset("assets/icons/check.png"),
                  ),
                  const SizedBox(width: 12),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "By Signing up, you agree to the ",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 12),
                      ),
                      TextSpan(
                        text: "Terms of Service\n",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: "and ",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 12),
                      ),
                      TextSpan(
                        text: "Privacy Policy ",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ]),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // CircurlarBarButton(
                    //   text: "CREATE ACCOUNT",
                    //   func: _openWelcomeScreen(context),
                    // ),
                    SizedBox(
                      height: 50,
                      width: 315,
                      child: ElevatedButton(
                        onPressed: () => _openWelcomeScreen(context),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                          primary: const Color(0xFF101010),
                          textStyle: Theme.of(context).textTheme.button,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Text(
                          'Sign Up',
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      width: 315,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          FootButton(
                            iconPath: "assets/icons/google.png",
                            text: "GOOGLE",
                          ),
                          FootButton(
                            iconPath: "assets/icons/facebook.png",
                            text: "FACEBOOK",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have Account?, ",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    GestureDetector(
                      onTap: () => _openSignInScreen(context),
                      child: Text(
                        "Sign In Now",
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
