import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class MyGlasmorphicLayer extends StatelessWidget {
  final Widget child;
  const MyGlasmorphicLayer({required this.child, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassmorphicFlexContainer(
                    alignment: Alignment.bottomCenter,
                    borderRadius: 0,
                    blur: 10,
                    border: 0,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFffffff).withOpacity(0.1),
                          const Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: const [
                          0.1,
                          1,
                        ]),
                    borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xFFffffff).withOpacity(0.5),
                        const Color((0xFFFFFFFF)).withOpacity(0.5),
                      ],
                    ),
                    child:child,
                  );
  }
}