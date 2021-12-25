import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';


class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: SizeConfig.screenWidth,
        child: Container(
          color: MyColors.black.withOpacity(0.7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: getUniqueH(157.0)),

              // LOGO SECTION
              SvgPicture.asset(MyIcons.textLogo,
                  color: MyColors.white, width: getUniqueW(180.0)),

              // TEXTFIELD SECTION
              Container(
                //height: getUniqueH(60.0),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.fromLTRB(getUniqueW(28.0), getUniqueH(40.0), getUniqueW(28.0), getUniqueH(16.0)),
                child: MyAuthTextField(controller: Provider.of<TextFieldProvider>(context).textController, 
                hintText: '', textInputType: TextInputType.phone, labelText: ""),
              ),

              // BUTTON SECTION
              ElevatedButton(
                onPressed: () {},
                child: const Text("Get Captcha"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      getUniqueW(30.0),
                    ),
                  ),
                  primary: MyColors.red,
                  fixedSize: Size(
                    getUniqueW(319.0),
                    getUniqueH(60.0),
                  ),
                ),
              ),

              //TEXT SECTION
              Container(
                child: MyTextRegular(
                    data: "Password to Login", size: 13, color: MyColors.white),
                padding: EdgeInsets.only(
                  left: getUniqueW(35.0),
                  top: getUniqueH(10.0),
                ),
                alignment: Alignment.centerLeft,
              ),

              const Spacer(),

              // BOTTOM TEXT SECTION
              Container(
                padding: EdgeInsets.only(bottom: getUniqueH(16.0)),
                width: getUniqueW(260.0),
                child: MyTextRegular(
                  data:
                      'By signing in, you agree to the User Agreement and Privacy Terms.',
                  size: 13,
                  color: MyColors.white,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),

        //  BACKGROUND IMAGE
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(MyImages.photoPng),
          ),
        ),
      ),
    );
  }
}
