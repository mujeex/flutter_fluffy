import 'package:flutter/material.dart';


import 'package:flutter_fluffy/providers/comboPrice.dart';

import 'package:provider/provider.dart';
import 'screens/customize_screen.dart';

//providers
import 'package:flutter_fluffy/providers/BoardShapesProvider.dart';
import 'package:flutter_fluffy/providers/BoardSizesProvider.dart';
import 'package:flutter_fluffy/providers/FlavorsProvider.dart';
import 'package:flutter_fluffy/providers/combo_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FlavorsProvider>(create: (_)=>FlavorsProvider(),),
        ChangeNotifierProvider<BoardSizesProvider>(create: (_)=>BoardSizesProvider(),),
        ChangeNotifierProvider<BoardShapesProvider>(create: (_)=>BoardShapesProvider(),),
        ChangeNotifierProvider<ComboList>(create: (_)=>ComboList()),
      ],
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

