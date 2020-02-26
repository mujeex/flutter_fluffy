
import 'package:flutter/material.dart';
import 'package:flutter_fluffy/widgets/selected_item.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

List<SelectionItem> generateSelectionItemWidgets(List<SelectionModel> ingredientsModelWidgets){

//  List<SelectionModel> generatedIngredientWidgets=generateModelsFromList(ingredientsList);

  List<SelectionItem> selectionItemsList= [];

  for(var ingredientModelWidget in ingredientsModelWidgets){
    selectionItemsList.add(
        SelectionItem(
          name: ingredientModelWidget.name,
          price: ingredientModelWidget.price,
          isSelected: ingredientModelWidget.isSelected,
          onPressed:(){
            ingredientModelWidget.toggleSelected();
            print(ingredientModelWidget.isSelected);
          },
        )
    ) ;
  }
  return selectionItemsList;
}