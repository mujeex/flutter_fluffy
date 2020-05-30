import 'package:flutter/material.dart';
import 'package:flutter_fluffy/providers/ArchiveProvider.dart';
import 'package:provider/provider.dart';

class ArchiveScreen extends StatefulWidget {
  @override
  _ArchiveScreenState createState() => _ArchiveScreenState();
}

class _ArchiveScreenState extends State<ArchiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ArchiveProvider>(builder: (context, archiveData, child) {
      return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Combos'),
          ),
          body: Container(
              color: Color(0xFFF6F6F6),
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  itemCount: archiveData.archivedCombosLength,
                  itemBuilder: (BuildContext context, index) {
                    if (archiveData.archivedCombosLength != 0) {
                      return Container(
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:<Widget>[
                            ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: archiveData.archivedCombos[index].length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 5),
                                      child: ChoiceChip(
                                        selected: false,
                                        label: Text('empty'),
                                      ));
                                }),
                            ButtonBar(
                              alignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Archive',
                                    style: TextStyle(color: Colors.blueAccent),),
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  child: Text('Buy Now',
                                    style: TextStyle(color: Colors.green),),
                                )
                              ],
                            )
                          ]
                        ),
                      );
                    } else {
                      return Text('No data');
                    }
                  })));
    });
  }
}
