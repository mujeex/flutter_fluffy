import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

class IngredientData with ChangeNotifier{

  List<Map<String, String>> flavors = [
    {
      'title': 'Red Velevet',
      'price': 'N5000',
    },
    {
      'title': 'Coconut',
      'price': 'N7000',
    },
    {
      'title': 'Strawberry',
      'price': 'N2000',
    },
    {
      'title': 'Vanilla',
      'price': 'N3000',
    }
  ];

  void updateSelection(SelectionModel selection){
    selection.toggleSelected();
    notifyListeners();
  }


}