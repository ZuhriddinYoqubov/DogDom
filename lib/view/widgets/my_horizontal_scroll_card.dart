import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class MyHorizontalScrollCard extends StatelessWidget {
  void Function()? onpressed;
  String? buttonText;
  String? image;
  String title;
  double? titleSize;
  String? subtitle;
  double? subtitleSize;
  Color? textColor;
  Color? cardColor;
  MyHorizontalScrollCard(
      {required this.title,
      this.titleSize,
      this.subtitleSize,
      this.subtitle,
      this.onpressed,
      this.buttonText,
      this.image,
      this.textColor,
      this.cardColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: getUniqueW(10.0)),
      padding:
          EdgeInsets.only(left: getUniqueW(24.0), bottom: getUniqueH(20.0)),
      width: getUniqueW(339.0),
      height: getUniqueH(190.0),
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MyTextMedium(
            data: title,
            size: titleSize ?? 24,
            color: textColor,
          ),
          SizedBox(height: getUniqueH(4.0)),
          if(subtitle != null)MyTextRegular(
            data: subtitle!,
            size: subtitleSize ??  13,
            color: textColor,
          ),
          if (onpressed != null) SizedBox(height: getUniqueH(16.0)),
          if (onpressed != null)
            ElevatedButton(
              onPressed: onpressed,
              style: ElevatedButton.styleFrom(
                primary: blackConst,
                padding: EdgeInsets.symmetric(
                    horizontal: getUniqueW(22.5), vertical: getUniqueH(6.0)),
              ),
              child: MyTextRegular(
                data: buttonText.toString(),
                size: 12,
              ),
            ),
          if (onpressed != null) SizedBox(height: getUniqueH(10.0)),
        ],
      ),
      decoration: BoxDecoration(
        image: image != null
            ? DecorationImage(image: AssetImage(image!), fit: BoxFit.cover)
            : null,
        color: cardColor ?? greyConst,
        borderRadius: BorderRadius.circular(
          getUniqueW(18.0),
        ),
      ),
    );
  }
}
