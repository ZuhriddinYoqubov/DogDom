import 'package:flutter/material.dart';
import 'package:dog_dom/core/constants/imports.dart';

class AuthProvider extends ChangeNotifier {

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController(text: '+998');
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();

  bool isVisible = true;
  bool isLoginPage = true;
  Icon eye = const Icon(Icons.remove_red_eye_outlined);

  void changeLoginPage(bool v) {
    isLoginPage = v;
    notifyListeners();
  }

  void changeVisible(bool v) {
    isVisible = v;
    eye = v
        ? const Icon(Icons.remove_red_eye_sharp)
        : const Icon(Icons.remove_red_eye_outlined);
    notifyListeners();
  }

  void onLoginPressed(BuildContext context) {
    if (formKey.currentState!.validate()) {
      User user = User(
        phone: phoneController.text.trim().toLowerCase(),
        password: passwordController.text.trim(),
      );
      formKey.currentState!.reset();
      authService.signIn(user).then((value) {
        // print(" auth provider:" + value);
          if (value == '200') {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          } else {
            Fluttertoast.showToast(msg: "Mobil raqam yoki parol xato!");
          }
      });
  }

  void onSignUpPressed(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      User user = User(
        name: nameController.text.trim(),
        phone: phoneController.text.trim().toLowerCase(),
        password: passwordController.text.trim(),
      );
      formKey.currentState!.reset();

      authService.signUp(user).then(
        (value) {
          // print(" auth provider:" + value);
          if (value == '200') {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          } else {
            Fluttertoast.showToast(msg: "Bu raqam avval ro'yxatdan o'tgan!");
          }
        },
      );
      notifyListeners();
    }
  }
}
}