//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

class BoardShapesProvider with ChangeNotifier{


  List<SelectionModel> _boardShapesModels = [
    SelectionModel(name:'Round',price: 500),
    SelectionModel(name:'Square',price: 700),
    SelectionModel(name:'Triangle',price: 1000),

  ];

  List<SelectionModel> get getBoardShapesModels{
    return _boardShapesModels;
  }


  void updateFlavorModels(SelectionModel boardShapeModel){
    boardShapeModel.toggleSelected();
    notifyListeners();
  }

}