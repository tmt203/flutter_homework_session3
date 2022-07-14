import 'package:flutter/material.dart';
import 'package:homework1/src/components/widgets/foot_button.dart';
import '../../components/widgets/slide_item_list.dart';

// Onboarding Screen
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  _openSignInScreen(BuildContext context) {
    Navigator.pushNamed(context, '/sign_in');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const SlideItemList(),
            // Buttons
            const SizedBox(height: 37),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    // child: CircurlarBarButton(
                    //   text: 'Get Started',
                    //   func: _openSignInScreen(context),
                    // ),
                    child: SizedBox(
                      height: 50,
                      width: 315,
                      child: ElevatedButton(
                        onPressed: () => _openSignInScreen(context),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(16),
                          primary: const Color(0xFF101010),
                          textStyle: Theme.of(context).textTheme.button,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Text(
                          "Get Started".toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.white),
                        ),
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
          ],
        ),
      ),
    );
  }
}
