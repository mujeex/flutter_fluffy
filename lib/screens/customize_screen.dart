//import 'dart:html';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_fluffy/constants.dart';

//Utilities
import 'package:flutter_fluffy/utility/widget_generator.dart';

//Providers
import 'package:flutter_fluffy/providers/SelectionOptionModelData.dart';

//Widgets
import 'package:flutter_fluffy/widgets/combo_panel.dart';
import 'package:flutter_fluffy/widgets/selection_panel.dart';

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
        color: Color(0xFFF6F6F6),
        child: Column(
          children: <Widget>[
            ComboPanel(),
            SelectionPanel(),
          ],
        ),
      ),
    );
  }
}
