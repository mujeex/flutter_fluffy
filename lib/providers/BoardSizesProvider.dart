//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

class BoardSizesProvider with ChangeNotifier{


  List<SelectionModel> _boardSizesModels = [
    SelectionModel(name:'8 Inches',price: 500),
    SelectionModel(name:'10 Inches',price: 1000),
    SelectionModel(name:'12 Inches',price: 2000),
    SelectionModel(name:'14 Inches',price: 5000),
    SelectionModel(name:'16 Inches',price: 9000)
  ];

  List<SelectionModel> get getBoardSizesModels{
    return _boardSizesModels;
  }


  void updateFlavorModels(SelectionModel boardSizeModel){
    boardSizeModel.toggleSelected();
    notifyListeners();
  }

}
