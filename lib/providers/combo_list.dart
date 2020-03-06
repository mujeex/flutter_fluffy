import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';
import 'package:flutter_fluffy/providers/ingredientData.dart';

class ComboList with ChangeNotifier{

  List<SelectionModel> _comboList=[];

   void addToComboList(SelectionModel modelOfSelectedItem){
    _comboList.add(modelOfSelectedItem);
    notifyListeners();
  }

//  void removeFromComboList(SelectionModel deSelectedModel){
//    IngredientData().updateSelection(deSelectedModel);
////     print(deSelectedModel);
//  }

  void removeFromComboList (ingredientModelWidget){
     //Get index of item you want to delete
    int index= _comboList.indexOf(ingredientModelWidget);
    _comboList.removeAt(index);
    notifyListeners();
  }

  bool checkHasItem (ingredientModelWidget){
   bool hasItem =  _comboList.contains(ingredientModelWidget);
   return hasItem;
  }

  int get getComboListLength{
     return _comboList.length;
  }


  List get getComboList{
     return _comboList;
  }




}