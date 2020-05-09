import 'package:flutter/material.dart';
import 'package:flutter_fluffy/providers/combo_list.dart';
import 'package:flutter_fluffy/widgets/combo_row.dart';
import 'package:flutter_fluffy/providers/combo_list.dart';
import 'package:provider/provider.dart';

class ComboPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ComboList>(builder: (context, comboList, child) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        alignment: AlignmentDirectional.topEnd,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
          Text(
            //this calculates nothing at the beginning of project.
            'N${comboList.calculateComboPrice().toString()}',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          CombosRow(),
        ]),
      );
    });
  }
}
