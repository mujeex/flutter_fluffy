import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_fluffy/constants.dart';
import 'package:flutter_fluffy/models/selection_model.dart';

//Utilities
import 'package:flutter_fluffy/utility/widget_generator.dart';
import 'package:flutter_fluffy/utility/list_to_models.dart';

//Providers
import 'package:flutter_fluffy/providers/ingredientData.dart';

//Widgets
import 'package:flutter_fluffy/widgets/combo_row.dart';

class CustomizeScreen extends StatefulWidget {
  @override
  _CustomizeScreenState createState() => _CustomizeScreenState();
}

class _CustomizeScreenState extends State<CustomizeScreen> {
  @override
  Widget build(BuildContext context) {
    final List ingredientsList = IngredientData().getIngredientList;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Customize'),
      ),
      body: Container(
        color: Color(0xFFF6F6F6),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              alignment: AlignmentDirectional.topEnd,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              child: Text(
                'N36,000',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            CombosRow(),
            Expanded(
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
            )
          ],
        ),
      ),
    );
  }
}

class SelectionRow extends StatelessWidget {
  SelectionRow({this.rowCategoryHeader, this.rowBody});
  final String rowCategoryHeader;
  final List rowBody;

  @override
  Widget build(BuildContext context) {
    final List<SelectionModel> ingredientModels =
        generateModelsFromList(rowBody);

    return Consumer<IngredientData>(
      builder: (context, ingredientData, child) {
        return Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    rowCategoryHeader.toUpperCase(),
                    style: kROW_HEADING_TEXT,
                  ),
                ),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children:
                      generateSelectionItemWidgets(ingredientModels, context),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
