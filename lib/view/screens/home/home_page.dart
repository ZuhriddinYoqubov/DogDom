import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // SELECT DISCOVER SECTION
          Row(children: [
            MyTextMedium(data: 'Select', size: 17),
            MyTextMedium(data: 'Discover', size: 17)
          ],)
        ],
      )
    );
  }
}
