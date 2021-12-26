import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

          // VERTICAL SCROLL CARD
          Flexible(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 300,
                      color: Colors.amber,
                      margin: EdgeInsets.all(10),
                    );
                  }))
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  Container buldHorizontalScroll() {
    return Container(
      width: SizeConfig.screenWidth,
      height: getUniqueH(190.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: getUniqueW(18.0)),
        children: [
          Container(
            width: getUniqueW(339.0),
            height: getUniqueH(190.0),
            alignment: Alignment.bottomLeft,
            // BUTTON
            child: Padding(
              padding: EdgeInsets.only(
                  left: getUniqueW(24.0), bottom: getUniqueH(30.0)),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: blackConst,
                  padding: EdgeInsets.symmetric(
                      horizontal: getUniqueW(22.5), vertical: getUniqueH(6.0)),
                ),
                child: MyTextRegular(
                  data: 'Let me',
                  size: 12,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(MyImages.homeCard1), fit: BoxFit.cover),
              color: greyConst,
              borderRadius: BorderRadius.circular(
                getUniqueW(18.0),
              ),
            ),
          ),
          SizedBox(width: getUniqueW(10.0)),
          Container(
            width: getUniqueW(339.0),
            height: getUniqueH(190.0),
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(MyImages.homeCard2), fit: BoxFit.cover),
              color: greyConst,
              borderRadius: BorderRadius.circular(
                getUniqueW(18.0),
              ),
            ),
          )
        ],
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
        hintText: 'Send the sample',
        suffixIcon: SvgPicture.asset(
          MyIcons.voiceTwo,
          color: blackConst.withOpacity(0.55),
          width: getUniqueW(24.0),
          fit: BoxFit.none,
        ),
        prefixIcon: SvgPicture.asset(
          MyIcons.searchSmall,
          width: getUniqueW(24.0),
          fit: BoxFit.none,
          color: blackConst.withOpacity(0.25),
        ),
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
