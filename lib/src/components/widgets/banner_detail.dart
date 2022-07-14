import 'package:flutter/material.dart';
import '../widgets/banner_slide_dash.dart';

class BannerDetail extends StatelessWidget {
  const BannerDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      width: 315,
      height: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/banner.png"),
          Positioned(
            left: 20,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Status
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 2,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xFF52BD94),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Text(
                    "NEW",
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                  ),
                ),
                const SizedBox(height: 5),
                // Title
                Text(
                  "Nike Air Max 98 Noir Black ",
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        height: 1.25,
                      ),
                ),
                // Cost
                Text(
                  "\$ 89,99 USD",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        height: 1.53,
                      ),
                ),
                const SizedBox(height: 20),
                const BannerSlideDash(index: 0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
