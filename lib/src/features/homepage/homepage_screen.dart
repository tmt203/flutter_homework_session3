import 'package:flutter/material.dart';
import 'package:homework1/src/components/widgets/special_product_info.dart';
import '../../components/widgets/trade_mark.dart';
import '../../components/widgets/search_bar.dart';
import '../../components/widgets/banner_detail.dart';
import '../../components/widgets/homepage_title_bar.dart';
import '../../components/widgets/popular_product_info.dart';
import '../../components/model/product.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({
    Key? key,
  }) : super(key: key);

  final bool isTyping = true;
  final specialProducts = Product.fetchSpecialProduct();
  final popularProducts = Product.fetchPopularProduct();

  List<Widget> specialProductInfo() {
    return specialProducts
        .map((product) => SpecialProductInfo(
            imagePath: product.imagePath,
            iconPath: product.iconPath,
            name: product.name,
            rates: product.rates,
            views: product.views,
            cost: product.cost))
        .toList();
  }

  List<Widget> popularProductInfo() {
    return popularProducts
        .map((product) => PopularProductInfo(
            imagePath: product.imagePath,
            iconPath: product.iconPath,
            name: product.name,
            rates: product.rates,
            views: product.views,
            cost: product.cost))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SearchBar(),
              // Start: Banner
              const BannerDetail(),
              // End: Banner
              const SizedBox(height: 40),
              // Start: Brands
              SizedBox(
                width: 315,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    HomePageTitleBar(title: 'Brands', subTitle: 'SEE ALL'),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: TradeMark(),
                    ),
                  ],
                ),
              ),
              // End: Brands
              const SizedBox(height: 40),
              // Start: Speacial For You
              SizedBox(
                width: 315,
                child: Column(
                  children: [
                    // Title bar
                    const HomePageTitleBar(
                        title: 'Speacial For You', subTitle: 'SEE ALL'),
                    const SizedBox(height: 20),
                    // Products
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: specialProductInfo(),
                      ),
                    ),
                  ],
                ),
              ),
              // End: Speacial For You
              const SizedBox(height: 40),
              // Start: Most Popular
              SizedBox(
                width: 315,
                child: Column(
                  children: [
                    Column(
                      children: [
                        // Title bar
                        const HomePageTitleBar(
                            title: "Most Popular", subTitle: "SEE ALL"),
                        const SizedBox(height: 20),
                        // Products
                        Column(
                          children: popularProductInfo(),
                        )
                      ],
                    ),
                  ],
                ),
              )
              // End: Most Popular
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home-2.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/discover.png'),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/order.png'),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/heart.png'),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/profile.png'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
