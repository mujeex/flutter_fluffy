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

  int get getComboListLength{
     return _comboList.length;
  }


  List get getComboList{
     return _comboList;
  }




}