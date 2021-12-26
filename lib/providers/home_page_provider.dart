
import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier{
  bool select = true;



  void changeSelect(bool check){
    select = check;
    notifyListeners();
  }
}