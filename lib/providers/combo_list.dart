import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';
import 'package:flutter_fluffy/providers/FlavorsProvider.dart';

class ComboList with ChangeNotifier{

  List<SelectionModel> _comboList=[];


  int get getComboListLength{
    return _comboList.length;
  }

  List get getComboList{
    return _comboList;
  }

  void removeFromComboList (SelectionModel ingredientModelWidget){
     //Get index of item you want to delete
    int index= _comboList.indexOf(ingredientModelWidget);
    _comboList.removeAt(index);
    notifyListeners();
  }

  void addToComboList(SelectionModel modelOfSelectedItem){
    _comboList.add(modelOfSelectedItem);
    notifyListeners();
  }

  bool checkHasItem (SelectionModel ingredientModelWidget){
//    print(_comboList);
   bool hasItem =  _comboList.contains(ingredientModelWidget);
   return hasItem;
  }


  int calculateComboPrice(){

    if(_comboList.length == 0) return 0;
    return  _comboList.map((item)=>item.price).reduce((accumulator,currentValue)=>accumulator+currentValue);

  }




}