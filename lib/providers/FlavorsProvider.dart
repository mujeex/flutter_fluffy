//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

class FlavorsProvider with ChangeNotifier{


  List<SelectionModel> _flavorModels = [
    SelectionModel(name:'Vanilla',price: 4000),
    SelectionModel(name:'Chocolate',price: 3000),
    SelectionModel(name:'Oreo',price: 6000),
    SelectionModel(name:'Coconut',price: 9000)
  ];

   List<SelectionModel> get getFlavorModels{
     return _flavorModels;
  }


  void updateFlavorModels(SelectionModel flavorModel){
    flavorModel.toggleSelected();
    notifyListeners();
  }


}

