import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class CircleDetailPage extends StatelessWidget {
  const CircleDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteConst,
      body: Stack(alignment: Alignment.bottomCenter, children: [
        SizedBox(
          height: SizeConfig.screenHeight,
          child: Column(
            children: [
              //APPBAR SECTION
              buildAppBar(context),

              //  GROUP DESCRIPTION SECTION
              buildTabDescription(),

              // TAB BAR SECTION
              buildTabBar(context),
              const Divider(thickness: 0.3),

              // TAB BAR VIEW SECTION
            ],
          ),
        ),
        buildBottomCard(context)
      ]),
    );
  }

  Widget buildBottomCard(BuildContext context,) {
    return Positioned(
      child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getUniqueW(30.0), vertical: getUniqueH(15.0)),
          decoration: BoxDecoration(
            color: whiteConst,
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 5,
                  color: blackConst.withOpacity(0.05),
                  offset: const Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(
              getUniqueW(104.0),
            ),
          ),
          child: Row(
            children: [
              bouldBottomCardItem(context, MyIcons.questions, 'Questions'),
              SizedBox(width: getUniqueW(45.5)),
              bouldBottomCardItem(context, MyIcons.article, 'Article'),
              SizedBox(width: getUniqueW(45.5)),
              bouldBottomCardItem(context, MyIcons.dynamik, 'Dynamic'),
            ],
          )),
      bottom: getUniqueH(16.0),
    );
  }

  Widget bouldBottomCardItem(BuildContext context, String image, String text) {
    return InkWell(
      onTap: ()  {
        Navigator.pop(context);},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            width: getUniqueW(24.0),
          ),
          SizedBox(height: getUniqueH(5.0)),
          MyTextRegular(data: text, size: 12)
        ],
      ),
    );
  }

  Widget buildTabBar(BuildContext context) {
    return Container(
      height: getUniqueH(38.0),
      padding: EdgeInsets.only(left: getUniqueW(18.0), top: getUniqueH(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const DynamicsTabBarItem( index: 0, itemName: 'Dynamic'),
          SizedBox(width: getUniqueW(28.0)),
          const DynamicsTabBarItem(index: 1, itemName: 'Discuss'),
          SizedBox(width: getUniqueW(28.0)),
          const DynamicsTabBarItem(index: 2, itemName: 'Select'),
        ],
      ),
    );
  }

  Widget buildTabDescription() {
    return Container(
      height: getUniqueH(46),
      width: SizeConfig.screenWidth,
      color: whiteConst,
      padding: EdgeInsets.symmetric(
          horizontal: getUniqueW(18.0), vertical: getUniqueH(13.0)),
      child: MyTextRegular(
        data: "Notice Group buying dog food.",
        size: 15,
        color: blackConst.withOpacity(0.7),
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: getUniqueH(230.0),
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

  Widget buildIntoAppBar(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // TOOLBAR SECTION
        SafeArea(
          child: Container(
            height: getUniqueH(44.0),
            padding: EdgeInsets.symmetric(
              horizontal: getUniqueW(10.0),
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
                    MyTextSemibold(
                      data: "Dog's Life",
                      size: 24,
                      color: whiteConst,
                    ),
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
                        MyTextRegular(
                          data: '548 Members',
                          size: 13,
                          color: whiteConst,
                        ),
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
      ],
    );
  }
}

