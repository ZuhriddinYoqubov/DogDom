import 'package:dog_dom/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        SvgPicture.asset(
          'assets/icons/QQ.svg',
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
