import 'package:dog_dom/core/constants/imports.dart';
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
  UserPage(),
  NoticePage(),
  PerconalPage(),
];

}
