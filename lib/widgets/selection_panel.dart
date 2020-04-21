import 'package:flutter/material.dart';
import 'package:flutter_fluffy/providers/SelectionOptionModelData.dart';
import 'package:provider/provider.dart';
import 'package:flutter_fluffy/widgets/selection_row.dart';
import 'package:flutter_fluffy/services/IngredientDataModel.dart';

class SelectionPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    IngredientDataModel ingredientData= IngredientDataModel();
    final List ingredientsList = ingredientData.dataFromDb;

    //generate models from list in this widget and assign to private variable inside provider for it to be consumed

    //Todo:Create the list models for the list builder to go through
    return Consumer<SelectionOptionModelData>(builder: (context, data, child) {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              )),
          child: ListView.builder(
            itemCount: ingredientsList.length,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            itemBuilder: (BuildContext context, int index) {
              return SelectionRow(
                rowCategoryHeader: ingredientsList[index]['category'],
                rowBody: ingredientsList[index]['body'],
              );
            },
          ),
        ),
      );
    });
  }
}
