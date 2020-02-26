import 'package:flutter/material.dart';
import 'package:flutter_fluffy/constants.dart';


class SelectionItem extends StatelessWidget {
  SelectionItem({@required this.name, @required this.price, this.onPressed,this.isSelected});


  final String name;
  final String price;
  final Function onPressed;
  final bool isSelected;


  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed:onPressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
//        height: 60,
        width: 110,
        padding: EdgeInsets.fromLTRB(8, 10, 2, 10),
        decoration:isSelected?kSelectionItemBoxActive:kSelectionItemBoxInactive,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: isSelected?kSELECTION_ITEM_TEXT_ACTIVE:kSELECTION_ITEM_TEXT_INACTIVE,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              price,
              style:isSelected?kPRICE_TEXT_ACTIVE:kPRICE_TEXT_INACTIVE,
            )
          ],
        ),
      ),
    );
  }
}
