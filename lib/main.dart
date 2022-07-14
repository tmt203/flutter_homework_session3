import 'package:flutter/material.dart';
import 'package:homework1/src/components/view_models/users_view_model.dart';
import 'package:homework1/src/components/views/home_screen.dart';
import 'package:homework1/src/features/sign_in/create_account_screen.dart';
import 'package:provider/provider.dart';
import 'src/features/sign_in/login_screen.dart';
import 'src/features/onboarding/onboarding_screen.dart';
import 'src/features/sign_in/welcome_screen.dart';
import 'src/features/homepage/homepage_screen.dart';
import 'src/features/profile/profile_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

// Routes
const locationsRoute = '/';
const locationSignInRoute = '/sign_in';
const locationSignUpRoute = '/sign_up';
const locationWelcomeRoute = '/welcome';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UsersViewModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: basicTheme(),
        // onGenerateRoute: _routes(),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: basicTheme(),
    //   // onGenerateRoute: _routes(),
    //   home: const ProfileScreen(),
    //   debugShowCheckedModeBanner: false,
    // );
  }

  RouteFactory _routes() {
    return (settings) {
      Widget screen;
      switch (settings.name) {
        case locationsRoute:
          screen = const OnboardingScreen();
          break;
        case locationSignInRoute:
          screen = const LoginScreen();
          break;
        case locationSignUpRoute:
          screen = const CreateAccountScreen();
          break;
        case locationWelcomeRoute:
          screen = const WelcomeScreen();
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
