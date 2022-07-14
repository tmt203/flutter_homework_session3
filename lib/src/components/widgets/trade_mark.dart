import 'package:flutter/material.dart';
import '../../components/model/trademark.dart';

class TradeMark extends StatelessWidget {
  const TradeMark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> itemList() {
      List<Widget> itemList = [];
      for (int i = 0; i < tradeMarkList.length; i++) {
        itemList.add(Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Image.asset(tradeMarkList[i].iconPath),
              const SizedBox(height: 10),
              Text(tradeMarkList[i].title,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w700, height: 1.43)),
              Text(
                tradeMarkList[i].quantity,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 11, color: const Color(0xFFB7B7B7)),
              ),
            ],
          ),
        ));
      }
      return itemList;
    }

    return Row(
      children: itemList(),
    );
  }
}
