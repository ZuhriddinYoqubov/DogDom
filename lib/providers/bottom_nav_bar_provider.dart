
import 'package:flutter/material.dart';

class BottomNavBarProvider extends ChangeNotifier{
  int currentIndex = 0;



  void changeBottomIndex(int index){
    currentIndex = index;
    notifyListeners();
  }
}