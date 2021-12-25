import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String data;
  final double size;
  Color? color;

  MyText({required this.data, required this.size, this.color ,Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
                  data,
                  style: TextStyle(
                      fontSize: getUniqueW(size), color: color),
                );
  }
}