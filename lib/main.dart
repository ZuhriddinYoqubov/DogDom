import 'package:dog_dom/providers/text_field_provider.dart';
import 'package:dog_dom/view/screens/home_page.dart';
import 'package:dog_dom/view/screens/launch_sign/launch_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => TextFieldProvider()),
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
