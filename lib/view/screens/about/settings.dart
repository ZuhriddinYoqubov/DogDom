import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: MyTextMedium(data: 'Settings', size: 17), actions: [IconButton(onPressed: (){}, icon: SvgPicture.asset(MyIcons.add))],),
      
    );
  }
}