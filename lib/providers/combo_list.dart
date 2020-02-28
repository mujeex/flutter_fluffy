import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

class ComboList with ChangeNotifier{

  List<SelectionModel> _comboList=[];

   void addToComboList(SelectionModel selectedItem){
    _comboList.add(selectedItem);
    notifyListeners();
  }

  int get getComboListLength{
     return _comboList.length;
  }


  List get getComboList{
     return _comboList;
  }



}