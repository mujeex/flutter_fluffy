import 'package:flutter/material.dart';
import 'package:flutter_fluffy/providers/combo_list.dart';
import 'package:provider/provider.dart';

class CombosRow extends StatelessWidget {
//  final List<String> combos =ComboList().getComboList;

  @override
  Widget build(BuildContext context) {
    return Consumer<ComboList>(
      builder: (context,comboListData,child){
//        if(comboList.getComboListLength!=0){
          return Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 80,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: comboListData.getComboListLength,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: ChoiceChip(
                            selected: false,
                            avatar: CircleAvatar(
                              backgroundColor: Colors.grey.shade800,
                              child: Text('AB'),

                            ),
                            label: Text('${comboListData.getComboList[index].name}'),
//

                          ),
                        );
                      }),
                ),
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
              ],
            ),
          );
//        }

      }
    );
  }
}
