import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class PerconalPage extends StatelessWidget {
  PerconalPage({Key? key}) : super(key: key);
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteConst,
      appBar: AppBar(
        backgroundColor: transpConst,
        elevation: 0,
        title: MyTextSemibold(
          data: 'Personal',
          size: 24,
          color: blackConst,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset(MyIcons.scan)),
          IconButton(onPressed: () {}, icon: SvgPicture.asset(MyIcons.setSvg))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CIRCLE AVATER SECTION
          Container(
            padding: EdgeInsets.symmetric(horizontal: getUniqueH(18.0)),
            height: getUniqueH(102.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: greyConst,
                  foregroundImage:
                      NetworkImage('https://source.unsplash.com/random'),
                  radius: getUniqueW(35.0),
                ),
                SizedBox(width: getUniqueW(12.0)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextMedium(data: 'Kelly Goldsmith', size: 17),
                    SizedBox(height: getUniqueH(6.0)),
                    MyTextRegular(
                      data: 'Golden Retriever · Mobile ',
                      size: 12,
                      color: blackConst.withOpacity(0.4),
                    ),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(
                  MyIcons.qrCode,
                  width: getUniqueW(22),
                  color: blackConst.withOpacity(0.4),
                )
              ],
            ),
          ),

          // SCORE SECTION
          Container(
            height: getUniqueH(79.0),
            padding: EdgeInsets.symmetric(
                horizontal: getUniqueW(50.0), vertical: getUniqueH(16.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    MyTextRegular(data: '98628', size: 20),
                    SizedBox(height: getUniqueH(4.0)),
                    MyTextRegular(
                        data: 'Praise',
                        size: 13,
                        color: blackConst.withOpacity(0.4)),
                  ],
                ),
                SizedBox(width: getUniqueW(51.5)),
                Column(
                  children: [
                    MyTextRegular(data: '369', size: 20),
                    SizedBox(height: getUniqueH(4.0)),
                    MyTextRegular(
                        data: 'Dynamic',
                        size: 13,
                        color: blackConst.withOpacity(0.4)),
                  ],
                ),
                SizedBox(width: getUniqueW(51.5)),
                Column(
                  children: [
                    MyTextRegular(data: '6869', size: 20),
                    SizedBox(height: getUniqueH(4.0)),
                    MyTextRegular(
                        data: 'Share',
                        size: 13,
                        color: blackConst.withOpacity(0.4)),
                  ],
                )
              ],
            ),
          ),

          // PROPERTIES SECTION
          buildPropertyListtile(context, 0, MyIcons.vector, 'Followers', '6848'),
          buildPropertyListtile(context, 1, MyIcons.focus, 'Following', '6848'),
          buildPropertyListtile(context, 2, MyIcons.collections, 'Followers', '6848'),
          buildPropertyListtile(context, 3, MyIcons.order, 'Followers', '6848'),
          buildPropertyListtile(context, 4, MyIcons.dark, 'Dark Mode', '6848'),

        ],
      ),
    );
  }

  Widget buildPropertyListtile(BuildContext context, int index,
      String leadingIcon, String title, String trailingText) {
    return Container(
      height: getUniqueH(52.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            leadingIcon,
            width: getUniqueW(24),
          ),
          SizedBox(width: getUniqueW(7.0)),
          MyTextRegular(data: title, size: 16),
          const Spacer(),
          if(index != 4)MyTextRegular(
              data: trailingText,
              size: 13,
              color: blackConst.withOpacity(0.25)),
          if(index != 4)IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              MyIcons.right,
              width: getUniqueW(24),
              color: blackConst.withOpacity(0.25),
            ),
          ),
          if(index == 4) Switch(
            value: Provider.of<PersonalPageProvider>(context).isDark,
            onChanged: (v) => context.read<PersonalPageProvider>().changeSelect(v),
            inactiveTrackColor: greyConst,
            activeColor: blackConst.withOpacity(0.4),
          )
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getUniqueW(18.0),
      ),
    );
  }
}
