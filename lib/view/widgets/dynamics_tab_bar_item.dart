import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class DynamicsTabBarItem extends StatelessWidget {
  final int index;
  final String itemName;
  const DynamicsTabBarItem({
    required this.index,
    required this.itemName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    return InkWell(
      onTap: () => context.read<CircleTabProvider>().changeTabIndex(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyTextMedium(
            data: itemName,
            size: 16.0,
            color: context.watch<CircleTabProvider>().currentIndex == index
                ? redConst
                : blackConst,
          ),
          SizedBox(height: getUniqueH(4.0)),
          Container(
            height: getUniqueH(3.0),
            width: getUniqueW(18.0),
            decoration: BoxDecoration(
              color: context.watch<CircleTabProvider>().currentIndex == index
                  ? redConst
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(2.0),
            ),
          )
        ],
      ),
    );
  }
}