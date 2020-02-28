import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

class IngredientData with ChangeNotifier{

  List<Map<String,String>> flavors = [
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

  List<Map<String,dynamic>> _ingredientsList = [
    {
      'category':'flavors',
      'body': [
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

      ]
    },
    {
      'category':'boardSize',
      'body': [
        {
          'title': '7 inches',
          'price': 'N2000',
        },
        {
          'title': '8 inches',
          'price': 'N3000',
        },
        {
          'title': '9 inches',
          'price': 'N4000',
        },
        {
          'title': '10 inches',
          'price': 'N5000',
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