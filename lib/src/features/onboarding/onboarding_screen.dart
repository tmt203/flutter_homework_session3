import 'package:flutter/material.dart';
import 'dart:async';
import '../../components/model/slide.dart';
import '../../components/widgets/main_button.dart';
import '../../components/widgets/slide_item.dart';
import '../../components/widgets/slide_dash.dart';

// Onboarding Screen
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: _onPageChanged,
                controller: _pageController,
                itemBuilder: (ctx, i) => SlideItem(index: i),
                itemCount: slideList.length,
              ),
            ),
            // Slash (not completed yet)
            // const SizedBox(height: 30),
            SlashCustomWidget(index: _currentPage),
            // Buttons
            const SizedBox(height: 37),
            const MainButton(text: 'GET STARTED'),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
