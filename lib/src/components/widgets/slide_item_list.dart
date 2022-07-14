import 'package:flutter/material.dart';
import '../../components/model/slide.dart';
import '../../components/widgets/slide_item.dart';
import '../../components/widgets/slide_dash.dart';
import 'dart:async';

class SlideItemList extends StatefulWidget {
  const SlideItemList({Key? key}) : super(key: key);

  @override
  State<SlideItemList> createState() => _SlideItemListState();
}

class _SlideItemListState extends State<SlideItemList> {
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
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              onPageChanged: _onPageChanged,
              controller: _pageController,
              itemCount: slideList.length,
              itemBuilder: (ctx, i) => SlideItem(index: i),
            ),
          ),
          const SizedBox(height: 30),
          SlideDashCustomWidget(index: _currentPage),
        ],
      ),
    );
  }
}
