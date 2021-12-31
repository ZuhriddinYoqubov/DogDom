
import 'package:flutter/material.dart';

class PersonalPageProvider extends ChangeNotifier{
  bool isDark = true;



  void changeSelect(bool check){
    isDark = check;
    notifyListeners();
  }
}