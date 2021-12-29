import 'package:dog_dom/core/constants/imports.dart';
import 'package:dog_dom/providers/bottom_nav_bar_provider.dart';
import 'package:dog_dom/view/screens/circle/circle_page.dart';
import 'package:dog_dom/view/screens/home/home_select_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var _contexWatch = context.watch<BottomNavBarProvider>();
    return Scaffold(
      backgroundColor: whiteConst,
      body: pageList[_contexWatch.currentIndex],
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

List<Widget> pageList = [
  HomeSelectPage(),
  CirclePage(),
];

}
