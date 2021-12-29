import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';


class MyCirclesListView extends StatelessWidget {
  const MyCirclesListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: getUniqueH(124.0),
      color: greyConst,
      child: ListView.builder(
        padding: EdgeInsets.only(left: getUniqueW(18.0)),
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right:getUniqueW(18.0) ),
              padding: EdgeInsets.zero,
              height: getUniqueH(104.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    foregroundImage:
                        NetworkImage('https://source.unsplash.com/random/${index+1}'),
                    backgroundColor: greyConst,
                    radius: getUniqueW(40.0),
                  ),
                  SizedBox(height: getUniqueH(6.0)),
                  MyTextRegular(data: 'Name Surname', size: 13.0),
                ],
              ),
            );
          }),
    );
  }
}