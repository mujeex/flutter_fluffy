
import 'package:flutter_fluffy/widgets/selected_item.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

import 'package:flutter_fluffy/providers/ingredientData.dart';
import 'package:flutter_fluffy/providers/combo_list.dart';
import 'package:provider/provider.dart';

List<SelectionItem> generateSelectionItemWidgets(List<SelectionModel> ingredientsModelWidgets,context){


  List<SelectionItem> selectionItemsList= [];

  for(var ingredientModelWidget in ingredientsModelWidgets){
    selectionItemsList.add(
        SelectionItem(
          name: ingredientModelWidget.name,
          price: ingredientModelWidget.price,
          isSelected: ingredientModelWidget.isSelected,
          onPressed:(){
            Provider.of<IngredientData>(context,listen: false).updateSelection(ingredientModelWidget);
            //Add selected item to combo list provider
            ComboList().addToComboList(ingredientModelWidget);
            print(ComboList().getComboListLength);
          },
        )
    ) ;
  }
  return selectionItemsList;
}