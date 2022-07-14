import 'package:flutter/material.dart';
import '../../components/widgets/foot_button.dart';
import '../../components/widgets/circular_bar_button.dart';
import '../../components/widgets/sign_in_title.dart';

// Sign in interface
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  _openSignUpPage(BuildContext context) {
    Navigator.pushNamed(context, '/sign_up');
  }

  _openWelcomeScreen(BuildContext context) {
    Navigator.pushNamed(context, '/welcome');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 94.0),
              child: SignInTitle(
                title: "Sign In",
                subTitle: "Please sign up to your Shoesly Account",
              ),
            ),
            const SizedBox(height: 71),
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
                suffixIcon: Image.asset("assets/icons/eye.png"),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                contentPadding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              ),
            ),
            const Spacer(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // CircurlarBarButton(
                  //   text: "SIGN IN",
                  //   func: _openSignUpPage(context),
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
                        'Sign In'.toUpperCase(),
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
            const SizedBox(height: 15), // Design 20
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Join with us, ",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  GestureDetector(
                    onTap: () => _openSignUpPage(context),
                    child: Text(
                      "Create Account",
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
    );
  }
}
