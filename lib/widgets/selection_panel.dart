import 'package:flutter/material.dart';
import 'package:flutter_fluffy/providers/FlavorsProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_fluffy/widgets/selection_row.dart';

class SelectionPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Todo:Create the list models for the list builder to go through
    return Consumer<FlavorsProvider>(builder: (context, flavorProvider, child) {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              )),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            children: <Widget>[
              SelectionRow(
                rowCategoryHeader: 'Flavors',
                  rowBody:flavorProvider.getFlavorModels ,
              )
            ],
          ),
        ),
      );
    });
  }
}
