import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/customize_screen.dart';
import 'package:flutter_fluffy/providers/ingredientData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>IngredientData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: CustomizeScreen(),
      ),
    );
  }
}

