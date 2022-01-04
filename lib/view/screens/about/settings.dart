import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteConst,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(
            MyIcons.left,
            width: getUniqueW(24),
          ),
        ),
        centerTitle: true,
        title: MyTextMedium(
          data: 'Settings',
          size: 17,
          color: blackConst,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset(MyIcons.add))
        ],
      ),
      body: Column(
        children: [
          buildSettingCard(
              context, 10, 'Account and Security', '', false, () {}),
          buildSettingCard(context, 1, 'Dark mode', 'Closed', false, () {}),
          buildSettingCard(
              context, 10, 'New message notification', '', false, () {}),
          buildSettingCard(context, 1, 'Privacy', '', false, () {}),
          buildSettingCard(context, 1, 'General', '', false, () {}),
          buildSettingCard(context, 1, 'Help and Feadback', '', false, () {}),
          buildSettingCard(
              context, 1, 'About Dogdom', 'version 6.0.5', false, () {}),
          buildSettingCard(context, 10, 'Switch Account', '', true, () {}),
          buildSettingCard(context, 1, 'Log Out', '', true, () {
            context.read<AuthProvider>().authService.logOut();
            context.read<BottomNavBarProvider>().changeBottomIndex(0);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SignPage()),
                (route) => false);
          }),
        ],
      ),
    );
  }

  Widget buildSettingCard(
    BuildContext context,
    double margin,
    String title,
    String subtitle,
    bool isButton,
    VoidCallback onPressed,
  ) {
    return Container(
      margin: EdgeInsets.only(top: getUniqueH(margin)),
      width: SizeConfig.screenWidth,
      height: getUniqueH(54),
      color: whiteConst,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: getUniqueW(18.0)),
      child: (isButton)
          ? TextButton(
              onPressed: () => onPressed(),
              child: MyTextRegular(
                data: title,
                size: 16,
                color: title == 'Log Out' ? redConst : blackConst,
              ))
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTextRegular(data: title, size: 16),
                const Spacer(),
                MyTextRegular(
                  data: subtitle,
                  size: 13,
                  color: blackConst.withOpacity(0.25),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    MyIcons.right,
                    color: blackConst.withOpacity(0.25),
                  ),
                ),
              ],
            ),
    );
  }
}
