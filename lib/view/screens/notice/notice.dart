import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // APPBAR SECTION
          Stack(
            children: [
              ClipPath(
                clipper: Customshape(),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 200,
                  width: SizeConfig.screenWidth,
                  color: redConst,
                ),
              ),
              Column(
                children: [
                  // TOOLBAR SECTION
                  SafeArea(
                    child: Container(
                      height: getUniqueH(58.0),
                      padding: EdgeInsets.symmetric(
                        horizontal: getUniqueW(18.0),
                      ),
                      child: Row(
                        children: [
                          MyTextSemibold(
                              data: "Message", size: 24, color: whiteConst),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(MyIcons.scan,
                                color: whiteConst),
                          ),
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(MyIcons.searchBig,
                                color: whiteConst),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // TAB BAR SECTION
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildTabItem(title: 'Praise', icon: MyIcons.praise),
                        buildTabItem(title: 'Messages', icon: MyIcons.messages),
                        buildTabItem(title: 'Comments', icon: MyIcons.comment),
                        buildTabItem(title: 'Help', icon: MyIcons.help),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: whiteConst,
                      borderRadius: BorderRadius.circular(
                        getUniqueW(16.0),
                      ),
                    ),
                    height: getUniqueH(102.0),
                    margin: EdgeInsets.symmetric(
                      horizontal: getUniqueW(18.0),
                      vertical: getUniqueH(10.0),
                    ),
                    padding: EdgeInsets.all(getUniqueW(16.0)),
                  ),
                ],
              ),
            ],
          ),
          Flexible(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.zero,
                  color: whiteConst,
                  height: getUniqueH(100),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 0,
                );
              },
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }

  Column buildTabItem({required String title, required String icon}) {
    return Column(
      children: [
        SvgPicture.asset(icon),
        SizedBox(height: getUniqueH(8.0)),
        MyTextRegular(data: title, size: 13)
      ],
    );
  }
}
