import 'package:flutter/material.dart';
import 'package:dog_dom/core/constants/imports.dart';

class AuthProvider extends ChangeNotifier {
  bool isVisible = false;
  Icon eye = const Icon(Icons.remove_red_eye_outlined);

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController(text: '+998');
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void changeController() {}

  void changeVisible(bool v) {
    isVisible = v;
    print(isVisible);
    eye = v
        ? const Icon(Icons.remove_red_eye_sharp)
        : const Icon(Icons.remove_red_eye_outlined);
  }

  void onSignUpPressed() {
    print('sign up pressed');
    if (formKey.currentState!.validate()) {
      final AuthService authService = AuthService();

      User user = User(
        name: nameController.text.trim(),
        phone: phoneController.text.trim().toLowerCase(),
        password: passwordController.text.trim(),
      );

      try {
        authService.signUp(user).then((value) {
          //Fluttertoast.showToast(msg: value);
          print(" auth providerda signup bosilganda:" + value);
          
        });
      } catch (e) {
        print(e.toString() + " auth providerda");
      }
      
    }
  }
}
