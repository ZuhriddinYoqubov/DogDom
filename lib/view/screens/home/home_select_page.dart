import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class HomeSelectPage extends StatelessWidget {
  const HomeSelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool select = context.watch<HomePageProvider>().select;
    return Scaffold(
      backgroundColor: whiteConst,
      body: Column(
        children: [
          // SELECT DISCOVER SECTION
          buildAppBar(select, context),

          // SEACH FIELD SECTION
          buildSearchField(context),

          // TOP NAVIGATION BAR
          buildTabBar(select),

          // HORIZONTAL SCROLL CARD
          if (select) buldHorizontalScroll(),
          SizedBox(height: getUniqueH(10.0)),

          // VERTICAL SCROLL CARD
          buildVerticalScroll()
        ],
      ),
    );
  }

  Widget buildVerticalScroll() {
    return Expanded(
        child: ListView.builder(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                width: 500,
                color: Colors.amber,
                margin: const EdgeInsets.all(10),
              );
            }));
  }

  Widget buldHorizontalScroll() {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: getUniqueH(190.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: getUniqueW(18.0)),
        itemCount: 2,
        itemBuilder: (context, index) {
          return index == 0
              ? MyHorizontalScrollCard(
                  onpressed: () {},
                  buttonText: 'Let name',
                  title: 'Take me home',
                  subtitle: 'Take care of stay dogs, please\ntake them home',
                  image: MyImages.homeCard1,
                )
              : MyHorizontalScrollCard(
                  image: MyImages.homeCard2,
                  title: 'Take me home',
                  subtitle: 'Please take me home',
                  textColor: whiteConst,
                );
        },
      ),
    );
  }

  Widget buildTabBar(bool select) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getUniqueH(10)),
      width: SizeConfig.screenWidth,
      height: getUniqueH(78.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: select
            ? const [
                TapBarItem(
                  image: MyIcons.ranking,
                  text: "Ranking",
                ),
                TapBarItem(
                  image: MyIcons.discuss,
                  text: "Discuss",
                ),
                TapBarItem(
                  image: MyIcons.surrounding,
                  text: "Surrounding",
                ),
              ]
            : const [
                TapBarItem(
                  image: MyIcons.nearby,
                  text: "Nearby",
                ),
                TapBarItem(
                  image: MyIcons.revelation,
                  text: "Revelation",
                ),
                TapBarItem(
                  image: MyIcons.fosterCare,
                  text: "Foster care",
                ),
              ],
      ),
    );
  }

  Widget buildSearchField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getUniqueW(18.0)),
      child: MySearchTextField(
        controller: context.watch<SearchFieldProvider>().searchController,
      ),
    );
  }

  Widget buildAppBar(bool select, BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(getUniqueW(18.0), getUniqueH(10.0),
            getUniqueW(18.0), getUniqueH(10.0)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: getUniqueW(24.0)),
            const Spacer(),
            //
            InkWell(
              onTap: () => context.read<HomePageProvider>().changeSelect(true),
              child: Column(
                children: [
                  MyTextMedium(
                    data: 'Select',
                    size: 17,
                    color: select ? blackConst : blackConst.withOpacity(0.4),
                  ),
                  SizedBox(height: getUniqueH(5.0)),
                  if (select)
                    SvgPicture.asset(
                      MyIcons.smile2,
                      color: redConst,
                    )
                ],
              ),
            ),
            SizedBox(width: getUniqueW(38.0)),
            //
            InkWell(
              onTap: () {
                context.read<HomePageProvider>().changeSelect(false);
              },
              child: Column(
                children: [
                  MyTextMedium(
                    data: 'Discover',
                    size: 17,
                    color: !select ? blackConst : blackConst.withOpacity(0.4),
                  ),
                  SizedBox(height: getUniqueH(5.0)),
                  if (!select)
                    SvgPicture.asset(
                      MyIcons.smile2,
                      color: redConst,
                    )
                ],
              ),
            ),
            const Spacer(),
            //
            SvgPicture.asset(
              MyIcons.notification,
              height: getUniqueH(24.0),
              color: blackConst.withOpacity(0.3),
            )
          ],
        ),
      ),
    );
  }
}
