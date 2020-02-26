import 'package:flutter/material.dart';
import 'package:flutter_fluffy/constants.dart';
import 'package:flutter_fluffy/utility/widget_generator.dart';
import 'package:flutter_fluffy/models/selection_model.dart';
import 'package:flutter_fluffy/widgets/selected_item.dart';
import 'package:flutter_fluffy/utility/list_to_models.dart';

List<Map<String, String>> flavors = [
  {
    'title': 'Red Velevet',
    'price': 'N5000',
  },
  {
    'title': 'Coconut',
    'price': 'N7000',
  },
  {
    'title': 'Strawberry',
    'price': 'N2000',
  },
  {
    'title': 'Vanilla',
    'price': 'N3000',
  }
];

List<SelectionModel> ingredientModels=generateModelsFromList(flavors);
List<SelectionItem> ingredientWidgets=generateSelectionItemWidgets(ingredientModels);

class CustomizeScreen extends StatefulWidget {
  @override
  _CustomizeScreenState createState() => _CustomizeScreenState();
}

class _CustomizeScreenState extends State<CustomizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Customize'),
      ),
      body: Container(
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
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                children: <Widget>[
                  SelectionRow(),
//                SelectionRow(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SelectionRow extends StatelessWidget {



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
                'FLAVORS',
                style: kROW_HEADING_TEXT,
              ),
            ),
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children:ingredientWidgets,
            )
//            generateSelectionItemWidgets(flavors)
          ],
        ),
      ),
    );
  }
}
