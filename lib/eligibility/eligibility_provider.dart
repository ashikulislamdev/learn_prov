import 'package:flutter/material.dart';

class EligibilityProvider extends ChangeNotifier{
  bool _isEligible = false;
  String _message = '';

  bool get isEligible => _isEligible;
  String get message => _message; 

  void checkEligible(int age){
    if (age >= 18) {
      eligible();
    }else{
      notEligible();
    }
  }

  void eligible(){
    _isEligible = true;
    _message = 'You are eligible for driving';
    notifyListeners();
  }

  void notEligible(){
    _isEligible = false;
    _message = 'You are not eligible for driving';
    notifyListeners();
  }
}