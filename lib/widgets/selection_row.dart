import 'package:flutter/material.dart';
import 'package:flutter_fluffy/utility/stateful_wrapper.dart';
import 'package:flutter_fluffy/providers/FlavorsProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_fluffy/constants.dart';
import 'package:flutter_fluffy/utility/widget_generator.dart';

class SelectionRow extends StatelessWidget {
  SelectionRow({this.rowCategoryHeader, this.rowBody});
  final String rowCategoryHeader;
  final List rowBody;

  @override
  Widget build(BuildContext context) {
        return Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    rowCategoryHeader,
                    style: kROW_HEADING_TEXT,
                  ),
                ),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children:
                      //Generate widgets from the selectionOptionModels in the provider.
                      generateSelectionItemWidgets(
                         rowBody, context),
                )
              ],
            ),
          ),
        );
  }
}
