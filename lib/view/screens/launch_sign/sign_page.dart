import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';

class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    var contextWatch = context.watch<AuthProvider>();
    var contextRead = context.read<AuthProvider>();
    bool isVisible = contextWatch.isVisible;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: SizeConfig.screenWidth,
        child: Container(
          color: blackConst.withOpacity(0.7),
          child: Form(
            key: contextWatch.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: getUniqueH(157.0)),
          
                // LOGO SECTION
                SvgPicture.asset(MyIcons.textLogo,
                    color: whiteConst, width: getUniqueW(180.0)),
          
                // NAME SECTION
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.fromLTRB(getUniqueW(28.0), getUniqueH(40.0),
                      getUniqueW(28.0), getUniqueH(16.0)),
                  child: MyAuthTextField(
                      controller:
                          contextWatch.nameController,
                      hintText: 'name',
                      textInputType: TextInputType.name,
                      labelText: ""),
                ),
          
                // PHONE SECTION
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.fromLTRB(getUniqueW(28.0), getUniqueH(0.0),
                      getUniqueW(28.0), getUniqueH(16.0)),
                  child: MyAuthTextField(
                      controller:
                          contextWatch.phoneController,
                      hintText: 'phone',
                      textInputType: TextInputType.phone,
                      labelText: ""),
                ),
          
                // PASSWORD SECTION
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.fromLTRB(getUniqueW(28.0), getUniqueH(0.0),
                      getUniqueW(28.0), getUniqueH(16.0)),
                  child: MyAuthTextField(
                    controller: contextWatch.passwordController,
                    hintText: 'password',
                    textInputType: TextInputType.visiblePassword,
                    labelText: "",
                    suffixIcon: IconButton(
                      onPressed: () {
                        isVisible = !isVisible;
                        contextRead.changeVisible(isVisible);
                      },
                      icon: contextWatch.eye,
                    ),
                  ),
                ),
          
                // BUTTON SECTION
                ElevatedButton(
                  onPressed: () {
                    contextRead.onSignUpPressed();
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: MyTextMedium(data: "Sign Up", size: 17),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        getUniqueW(30.0),
                      ),
                    ),
                    primary: redConst,
                    fixedSize: Size(
                      getUniqueW(319.0),
                      getUniqueH(60.0),
                    ),
                  ),
                ),
          
                //TEXT BUTTON SECTION
                Container(
                  child: InkWell(
                    onTap: () {},
                    child: MyTextRegular(
                        data: "Password to Login", size: 13, color: whiteConst),
                  ),
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
                    maxLines: 2,
                    color: whiteConst,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
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
