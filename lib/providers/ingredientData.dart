import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

class IngredientData with ChangeNotifier{



  List<Map<String,dynamic>> _ingredientsList = [
    {
      'category':'flavors',
      'body': [
        {
          'title': 'Red Velevet',
          'price': 5000,
        },
        {
          'title': 'Coconut',
          'price': 7000,
        },
        {
          'title': 'Strawberry',
          'price': 2000,
        },
        {
          'title': 'Vanilla',
          'price': 3000,
        }

      ]
    },
    {
      'category':'boardSize',
      'body': [
        {
          'title': '7 inches',
          'price': 2000,
        },
        {
          'title': '8 inches',
          'price': 3000,
        },
        {
          'title': '9 inches',
          'price': 4000,
        },
        {
          'title': '10 inches',
          'price': 5000,
        }

      ]
    },

  ];

   List get getIngredientList{
     return _ingredientsList;
  }


  void updateSelection(SelectionModel selection){
    selection.toggleSelected();
    notifyListeners();
  }


}