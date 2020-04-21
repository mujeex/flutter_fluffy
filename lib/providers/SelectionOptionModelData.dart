//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';
//import 'package:flutter_fluffy/services/IngredientDataModel.dart';

class SelectionOptionModelData with ChangeNotifier{


  List<SelectionModel> _selectionOptionModels = [];

  void generateModelsFromList(List<Map<String,dynamic>> ingredientList) {

    for (var ingredient in ingredientList) {
      _selectionOptionModels.add(
          SelectionModel(
              name: ingredient['title'],
              price: ingredient['price']
          )
      );
    }
    notifyListeners();
  }


   List<SelectionModel> get getSelectionOptionModels{
//    print(_selectionOptionModels);
     return _selectionOptionModels;
  }


  void updateSelectionOptionModel(SelectionModel selectionOption){
    selectionOption.toggleSelected();
    notifyListeners();
  }


}