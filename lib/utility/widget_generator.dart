import 'package:provider/provider.dart';
import 'package:flutter_fluffy/widgets/selected_item.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

//providers
import 'package:flutter_fluffy/providers/comboPrice.dart';
import 'package:flutter_fluffy/providers/FlavorsProvider.dart';
import 'package:flutter_fluffy/providers/combo_list.dart';


List<SelectionItem> generateSelectionItemWidgets(List<SelectionModel> selectionOptionModels,context){

  List<SelectionItem> selectionOptionWidgets= [];


  //Providers
  var flavorsProvider=Provider.of<FlavorsProvider>(context,listen: true);
  var comboListProvider=Provider.of<ComboList>(context,listen: false);
  var comboPrice=Provider.of<ComboPrice>(context,listen: true);

  for(var selectionOptionModel in selectionOptionModels){
    selectionOptionWidgets.add(
        SelectionItem(
          name: selectionOptionModel.name,
          price: selectionOptionModel.price,
          isSelected: selectionOptionModel.isSelected,
          onPressed:(){

            //Toggle the on/off of selected items.
            flavorsProvider.updateFlavorModels(selectionOptionModel);

            bool hasItem=comboListProvider.checkHasItem(selectionOptionModel);
            //Check to see if item already exist before adding to combo list.
            if(hasItem){
              comboListProvider.removeFromComboList(selectionOptionModel);
              print('has item, hence, remove');
            }else{
              comboListProvider.addToComboList(selectionOptionModel);
              print('has no item, hence, add');
            }

            comboListProvider.calculateComboPrice();

          },
        )
    ) ;
  }
  return selectionOptionWidgets;
}
