
import 'package:flutter/material.dart';

class CircleTabProvider extends ChangeNotifier{
  int currentIndex = 0;



  void changeTabIndex(int index){
    currentIndex = index;
    notifyListeners();
  }
}