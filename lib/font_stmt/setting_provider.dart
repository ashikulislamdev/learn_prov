import 'package:flutter/material.dart';

class Setting extends ChangeNotifier{
  int fontSize = 10;

  int get newFontSize => fontSize;
  
  void incFontSize(){
    fontSize ++;
    notifyListeners();
  }

  void dicFontSize(){
    fontSize --;
    notifyListeners();
  }
}