import 'package:dog_dom/providers/search_field_prowider.dart';
import 'package:flutter/material.dart';
import 'package:dog_dom/core/constants/imports.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => TextFieldProvider()),
      ChangeNotifierProvider(create: (context) => SearchFieldProvider()),

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
