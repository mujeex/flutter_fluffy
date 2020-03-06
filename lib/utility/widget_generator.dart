
import 'package:flutter_fluffy/widgets/selected_item.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

//providers
import 'package:flutter_fluffy/providers/ingredientData.dart';
import 'package:flutter_fluffy/providers/combo_list.dart';
import 'package:provider/provider.dart';

List<SelectionItem> generateSelectionItemWidgets(List<SelectionModel> ingredientsModelWidgets,context){


  List<SelectionItem> selectionItemsList= [];
  //providers
  var comboListProvider=Provider.of<ComboList>(context,listen: false);
  var ingredientDataProvider=Provider.of<IngredientData>(context,listen: false);

  for(var ingredientModelWidget in ingredientsModelWidgets){
    selectionItemsList.add(
        SelectionItem(
          name: ingredientModelWidget.name,
          price: ingredientModelWidget.price,
          isSelected: ingredientModelWidget.isSelected,
          onPressed:(){
            //Toggle the on/off of selected items.
            ingredientDataProvider.updateSelection(ingredientModelWidget);
            //Add selected item to combo list provider.

            if(comboListProvider.checkHasItem(ingredientModelWidget)){
              print('remove it from the list');
              comboListProvider.removeFromComboList(ingredientModelWidget);
            }else{
              comboListProvider.addToComboList(ingredientModelWidget);
            }

          },
        )
    ) ;
  }
  return selectionItemsList;
}