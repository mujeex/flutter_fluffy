
import 'package:flutter/material.dart';
import 'package:flutter_fluffy/widgets/selected_item.dart';
import 'list_to_models.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

Widget generateSelectionItemWidgets(List<Map<String,String>> ingredientsList){

  List<SelectionModel> generatedIngredientWidgets=generateModelsFromList(ingredientsList);

  List<SelectionItem> selectionItemsList= [];

  for(var generatedIngredient in generatedIngredientWidgets){
    selectionItemsList.add(
        SelectionItem(
          name: generatedIngredient.name,
          price: generatedIngredient.price,
          isSelected: generatedIngredient.isSelected,
          onPressed:()=>generatedIngredient.toggleSelected(),
        )
    ) ;
  }
  return Wrap(
    spacing: 5,
    runSpacing: 5,
    children: selectionItemsList,
  );
}