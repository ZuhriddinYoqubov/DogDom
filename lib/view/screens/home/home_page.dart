import 'package:dog_dom/core/constants/imports.dart';
import 'package:dog_dom/providers/search_field_prowider.dart';
import 'package:dog_dom/view/widgets/my_search_text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteConst,
        body: Column(
          children: [
            // SELECT DISCOVER SECTION
            buildAppBar(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: getUniqueW(18.0)),
              child: MySearchTextField(
                controller:
                    context.watch<SearchFieldProvider>().searchController,
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
            )
          ],
        ));
  }

  SafeArea buildAppBar() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(getUniqueW(18.0), getUniqueH(10.0),
            getUniqueW(18.0), getUniqueH(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: getUniqueW(24.0)),
            const Spacer(),
            //
            Column(
              children: [
                MyTextMedium(data: 'Select', size: 17),
                SizedBox(height: getUniqueH(5.0)),
                SvgPicture.asset(
                  MyIcons.smile2,
                  color: redConst,
                )
              ],
            ),
            SizedBox(width: getUniqueW(38.0)),
            //
            Column(
              children: [
                MyTextMedium(data: 'Discover', size: 17),
                SizedBox(height: getUniqueH(5.0)),
                SvgPicture.asset(
                  MyIcons.smile2,
                  color: redConst,
                )
              ],
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
