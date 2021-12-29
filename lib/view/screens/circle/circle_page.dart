import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class CirclePage extends StatelessWidget {
  const CirclePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteConst,
      body: Column(
        children: [
          buildAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal:getUniqueW(18.0)),
            child: MySearchTextField( 
        controller: context.watch<SearchFieldProvider>().searchController,
            ),
          ),

        ],
      ),
    );
  }

  SafeArea buildAppBar() {
    return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getUniqueW(18.0),
              vertical: getUniqueH(18.0),
            ),
            child: Row(
              children: [
                MyTextSemibold(data: 'Circle', size: 24),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    MyIcons.scan,
                    width: getUniqueW(24.0),
                  ),
                ),
                SizedBox(width: getUniqueW(25.0)),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    MyIcons.add,
                    width: getUniqueW(24.0),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
