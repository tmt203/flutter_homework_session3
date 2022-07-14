import 'package:flutter/material.dart';

class SpecialProductInfo extends StatelessWidget {
  const SpecialProductInfo({
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
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          Container(
            width: 150,
            height: 150,
            decoration: const BoxDecoration(
              color: Color(0xFFE5E5E5),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  imagePath,
                ),
                Positioned(
                  top: 23,
                  left: 15,
                  child: Image.asset(iconPath),
                ),
                Positioned(
                  top: 15,
                  right: 15,
                  child: Image.asset(
                    "assets/icons/heart-icon-off.png",
                  ),
                ),
              ],
            ),
          ),
          // Desc
          const SizedBox(height: 10),
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontSize: 12, height: 1.53, color: Colors.black),
          ),
          const SizedBox(height: 5),
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
    );
  }
}

// // Custom ImageProvider
// class _OurKey {
//   final Object providerCacheKey;
//   const _OurKey(this.providerCacheKey);

//   @override
//   bool operator ==(Object other) {
//     if (other.runtimeType != runtimeType) return false;
//     return other is _OurKey && other.providerCacheKey == providerCacheKey;
//   }

//   @override
//   int get hashCode => providerCacheKey.hashCode;
// }

// class OurImageProvider extends ImageProvider<_OurKey> {
//   final ImageProvider imageProvider;
//   const OurImageProvider(this.imageProvider);

//   @override
//   ImageStreamCompleter load(_OurKey key, decode) {
//     throw UnimplementedError();
//   }

//   @override
//   Future<_OurKey> obtainKey(ImageConfiguration configuration) {
//     throw UnimplementedError();
//   }
// }
