import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'screens/customize_screen.dart';

//providers
import 'package:flutter_fluffy/providers/ingredientData.dart';
import 'package:flutter_fluffy/providers/combo_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>IngredientData(),

      child: ChangeNotifierProvider(
        create: (context)=>ComboList(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.grey,
          ),
          home: CustomizeScreen(),
        ),
      ),
    );
  }
}

