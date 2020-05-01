import 'package:flutter/material.dart';
import 'package:flutter_fluffy/providers/combo_list.dart';

class ComboPrice with ChangeNotifier {

  int _comboPrice=0;


  int get comboPrice{
    return _comboPrice;
  }

  void calculateComboPrice(){
    //Check to see why it doesn't receive the comboList;
    try{
      if(ComboList().getComboListLength==0) return;
      _comboPrice = ComboList().getComboList.map((item)=>item.price).reduce((accumulator,currentValue)=>accumulator+currentValue);
      notifyListeners();
    }catch(err){
      print(err);
    }
  }

}