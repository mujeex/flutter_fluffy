import 'package:flutter/material.dart';
import 'archive_screen.dart';
import 'customize_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    CustomizeScreen(),
    ArchiveScreen()
  ];

  void onTapped(int index){
    setState(() {
      _currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        onTap: onTapped,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.color_lens),
            title: new Text('Customize'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.flare),
            title: new Text('Combo'),
          ),
        ],
      ),
    );
  }
}
