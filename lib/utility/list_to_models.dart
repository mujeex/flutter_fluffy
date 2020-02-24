import 'package:flutter_fluffy/models/selection_model.dart';



List generateModelsFromList(List<Map<String,String>> ingredientList){

  List<SelectionModel> ingredientWidgets=[];
  for(var ingredient in ingredientList){
    ingredientWidgets.add(
      SelectionModel(
        name: ingredient['title'],
        price: ingredient['price']
      )
    );
  }
  return ingredientWidgets;
}