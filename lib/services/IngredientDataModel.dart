import 'package:flutter_fluffy/models/selection_model.dart';


//class IngredientDataModel{
//
//
//  List<Map<String,dynamic>> flavors=[
//    {
//      'category':'flavors',
//      'body': [
//        {
//          'title': 'Red Velevet',
//          'price': 5000,
//        },
//        {
//          'title': 'Coconut',
//          'price': 7000,
//        },
//        {
//          'title': 'Strawberry',
//          'price': 2000,
//        },
//        {
//          'title': 'Vanilla',
//          'price': 3000,
//        }
//
//      ]
//    }
//  ];


  List<Map<String,dynamic>> _selectionDataList = [
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

//  List<SelectionModel> generateModelsFromList() {
//
//    List selectionOptionModels=[];
//
//    for (var ingredient in _ingredientsList) {
//      selectionOptionModels.add(
//          SelectionModel(
//              name: ingredient['title'],
//              price: ingredient['price']
//          )
//      );
//    }
//    return selectionOptionModels;
//
//  }



  List get dataFromDb{
    return _selectionDataList;
  }



}