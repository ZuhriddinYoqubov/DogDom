import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class CircleDetail extends StatelessWidget {
  const CircleDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteConst,
      body: Column(
        children: [
          //APPBAR SECTION
          buildAppBar(context)
        ],
      ),
    );
  }

  Container buildAppBar(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: getUniqueH(276.0),
      decoration: const BoxDecoration(
        color: greyConst,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://source.unsplash.com/random',
          ),
        ),
      ),
      child: MyGlasmorphicLayer(
        child: buildIntoAppBar(context),
      ),
    );
  }

  Column buildIntoAppBar(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        // TOOLBAR SECTION
        SafeArea(
          child: Container(
            height: getUniqueH(44.0),
            padding: EdgeInsets.symmetric(
              horizontal: getUniqueW(18.0),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: SvgPicture.asset(
                    MyIcons.left,
                    color: whiteConst,
                    width: getUniqueW(24.0),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    MyIcons.searchBig,
                    width: getUniqueW(24.0),
                    color: whiteConst,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    MyIcons.moreV,
                    width: getUniqueW(24.0),
                    color: whiteConst,
                  ),
                ),
              ],
            ),
          ),
        ),
        
        // GROUP INFO SECTION
        Container(
          width: SizeConfig.screenWidth,
          padding: EdgeInsets.symmetric(
              horizontal: getUniqueW(18.0), vertical: getUniqueH(15.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                foregroundImage:
                    NetworkImage('https://source.unsplash.com/random/2'),
                radius: 36.5,
                backgroundColor: greyConst,
              ),
              SizedBox(
                width: getUniqueW(10.0),
              ),
              SizedBox(
                width: getUniqueW(256.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyTextSemibold(data: "Dog's Life", size: 24, color: whiteConst,),
                    SizedBox(height: getUniqueH(6.0)),
                    MyTextRegular(
                        data:
                            "Dog knowledge sharing, irregularly organized offline exchanges and group buying.",
                        size: 13,
                        color: whiteConst,
                        maxLines: 2),
                    SizedBox(height: getUniqueH(12.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MyTextRegular(data: '548 Members', size: 13,color: whiteConst,),
                        ElevatedButton(
                          onPressed: () {},
                          child: MyTextRegular(data: 'Joined', size: 13),
                          style: ElevatedButton.styleFrom(primary: blackConst),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

        //  GROUP DESCRIPTION SECTION
        Container(
          height: getUniqueH(46),
          width: SizeConfig.screenWidth,
          color: whiteConst,
          padding: EdgeInsets.symmetric(horizontal: getUniqueW(18.0), vertical: getUniqueH(13.0)),
          child: MyTextRegular(data: "Notice Group buying dog food.",size: 15,color: blackConst.withOpacity(0.7),),
        )
      ],
    );
  }
}
