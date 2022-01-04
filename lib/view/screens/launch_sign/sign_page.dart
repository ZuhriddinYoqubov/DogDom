import 'package:dog_dom/core/constants/imports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignPage extends StatelessWidget {
  SignPage({Key? key}) : super(key: key);
  late bool isVisible;
  late bool isLoginPage;
  late var contextWatch;
  late var contextRead;

  @override
  Widget build(BuildContext context) {
    contextWatch = context.watch<AuthProvider>();
    contextRead = context.read<AuthProvider>();
    isVisible = context.watch<AuthProvider>().isVisible;
    isLoginPage = contextWatch.isLoginPage;

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
                SizedBox(height: getUniqueH(40.0)),

                // NAME SECTION
                if (!isLoginPage)
                  Container(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.fromLTRB(getUniqueW(28.0),
                        getUniqueH(0.0), getUniqueW(28.0), getUniqueH(16.0)),
                    child: MyAuthTextField(
                        controller: contextWatch.nameController,
                        hintText: 'name',
                        textInputType: TextInputType.name,
                        labelText: ""),
                  ),

                // PHONE SECTION
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.fromLTRB(getUniqueW(28.0),
                      getUniqueH(0.0), getUniqueW(28.0), getUniqueH(16.0)),
                  child: MyAuthTextField(
                      controller: contextWatch.phoneController,
                      hintText: 'phone',
                      textInputType: TextInputType.phone,
                      labelText: ""),
                ),

                // PASSWORD SECTION
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.fromLTRB(getUniqueW(28.0),
                      getUniqueH(0.0), getUniqueW(28.0), getUniqueH(16.0)),
                  child: MyAuthTextField(
                    controller: contextWatch.passwordController,
                    hintText: 'password',
                    textInputType: TextInputType.visiblePassword,
                    labelText: "",
                    suffixIcon: InkWell(
                      onTap: () {
                        isVisible = !isVisible;
                        contextRead.changeVisible(isVisible);
                      },
                      child: Icon(isVisible
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye_sharp),
                    ),
                  ),
                ),

                // BUTTON SECTION
                ElevatedButton(
                  onPressed: () async {
                    contextWatch.isLoginPage
                        ? contextRead.onLoginPressed()
                        : contextRead.onSignUpPressed(context);

                    if (contextWatch.isAuth) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }
                  },
                  child: MyTextMedium(
                      data: isLoginPage ? "Sign In" : 'Sign Up', size: 17),
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
                    onTap: () {
                      isLoginPage = !isLoginPage;
                      contextRead.changeLoginPage(isLoginPage);
                    },
                    child: MyTextRegular(
                        data: isLoginPage ? "Sign Up" : 'Sign In',
                        size: 13,
                        color: whiteConst),
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
