import 'package:flutter_fluffy/models/selection_model.dart';



List<SelectionModel> generateModelsFromList(List<Map<String,dynamic>> ingredientList){

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