import 'package:flutter/material.dart';
import 'package:dog_dom/core/constants/imports.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Timer(const Duration(seconds: 2), () async{
        SharedPreferences pref = await SharedPreferences.getInstance();
      bool isLogged = pref.getBool('isLogged')?? false;
     _setNavigator( isLogged? HomePage(): SignPage(), context);
    });


    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Container(
            child: SvgPicture.asset(
              MyIcons.textLogo,
              width: getUniqueW(144.0),
              height: getUniqueH(53.0),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: getUniqueH(4.0)),
          ),
        ],
      ),
    );
  }

  void _setNavigator(Widget page, BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => page),
    );
  }
}
