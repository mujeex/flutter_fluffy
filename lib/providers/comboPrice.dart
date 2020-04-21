import 'package:flutter/material.dart';
import 'package:flutter_fluffy/providers/combo_list.dart';

class ComboPrice with ChangeNotifier {

  int _comboPrice=0;


  int get comboPrice{
    return _comboPrice;
  }

  void calculateComboPrice(){
    try{
      _comboPrice = ComboList().getComboList.map((item)=>item.price).reduce((accumulator,currentValue)=>accumulator+currentValue);
      notifyListeners();
    }catch(err){
      print(err);
    }
  }

}