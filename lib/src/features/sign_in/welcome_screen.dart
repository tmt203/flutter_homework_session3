import 'package:flutter/material.dart';
import '../../components/widgets/main_title.dart';
import '../../components/widgets/circular_bar_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              width: 300,
              height: 300,
              child: Image.asset("assets/images/hinh4.png"),
            ),
            // Main title
            const SizedBox(height: 33),
            MainTitle(
              titleText: "Welcome To The \nClub Of Shoesly!",
              titleFont: Theme.of(context).textTheme.headline1!,
            ),
            const SizedBox(height: 20),
            MainTitle(
              titleText: "Your account has ben succeed",
              titleFont: Theme.of(context).textTheme.headline2!,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30)
                  .copyWith(bottom: 42),
              // child: CircurlarBarButton(
              //   text: "Let's Search Shoes!",
              //   func: _openSignInScreen(context),
              // ),
              child: SizedBox(
                height: 50,
                width: 315,
                child: ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    primary: const Color(0xFF101010),
                    textStyle: Theme.of(context).textTheme.button,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Text(
                    "Let's Search Shoes!",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
