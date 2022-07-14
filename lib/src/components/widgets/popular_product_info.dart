import 'package:flutter/material.dart';

class PopularProductInfo extends StatelessWidget {
  const PopularProductInfo({
    Key? key,
    required this.imagePath,
    required this.iconPath,
    required this.name,
    required this.rates,
    required this.views,
    required this.cost,
  }) : super(key: key);

  final String imagePath;
  final String iconPath;
  final String name;
  final double rates;
  final int views;
  final double cost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 88,
            height: 88,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              imagePath,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Icons
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(iconPath),
                    Image.asset("assets/icons/heart-icon-off.png"),
                  ],
                ),
                Text(name,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 12, height: 1.53, color: Colors.black)),
                Row(
                  children: [
                    Image.asset("assets/icons/star.png"),
                    const SizedBox(width: 5),
                    Text(
                      "$rates",
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 11,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "($views Reviews)",
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 11,
                            color: const Color(0xFFB7B7B7),
                          ),
                    ),
                  ],
                ),
                Text(
                  "\$$cost",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w700, height: 1.43),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
