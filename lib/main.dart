import 'package:dog_dom/providers/bottom_nav_bar_provider.dart';
import 'package:flutter/material.dart';
import 'package:dog_dom/core/constants/imports.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => TextFieldProvider()),
      ChangeNotifierProvider(create: (context) => SearchFieldProvider()),
      ChangeNotifierProvider(create: (context) => HomePageProvider()),
      ChangeNotifierProvider(create: (context) => BottomNavBarProvider()),
      ChangeNotifierProvider(create: (context) => CircleTabProvider()),

    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "SFProDisplay",
        primarySwatch: Colors.blue,
      ),
      home: const LaunchPage(),
    );
  }
}
