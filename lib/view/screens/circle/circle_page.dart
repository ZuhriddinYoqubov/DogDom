import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class CirclePage extends StatelessWidget {
  const CirclePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteConst,
      body: Column(
        children: [
          buildAppBar(),
          buildTextField(context),
          buildHorizontalScroll(),
          // POPULAR CIRCLE SECTION
          buildSectionTitle('Popular circle'),
          MyCirclesListView(),
          // THE CIRCLE JOIN SECTION
          buildSectionTitle('The Circle to Join'),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getUniqueW(18.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyTextMedium(data: title, size: 20),
          InkWell(
            onTap: () {},
            child: MyTextRegular(
              data: 'More',
              size: 13,
              color: blackConst.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHorizontalScroll() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: getUniqueH(20)),
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
                  buttonText: 'Create',
                  title: 'How do you\ncreate your circle?',
                  titleSize: 20,
                )
              : MyHorizontalScrollCard(
                  cardColor: pincAksent,
                  title: 'How do you create your circle?',
                  titleSize: 17,
                );
        },
      ),
    );
  }

  Widget buildTextField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getUniqueW(18.0)),
      child: MySearchTextField(
        controller: context.watch<SearchFieldProvider>().searchController,
      ),
    );
  }

  Widget buildAppBar() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getUniqueW(18.0),
          vertical: getUniqueH(18.0),
        ),
        child: Row(
          children: [
            MyTextSemibold(data: 'Circle', size: 24),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                MyIcons.scan,
                width: getUniqueW(24.0),
              ),
            ),
            SizedBox(width: getUniqueW(25.0)),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                MyIcons.add,
                width: getUniqueW(24.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
