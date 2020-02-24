import 'package:flutter/material.dart';
import 'package:flutter_fluffy/constants.dart';


List<Map<String,String>> flavors=[
  {
    'title':'Red Velevet',
    'price':'N5000',
  },
  {
    'title':'Coconut',
    'price':'N7000',
  },
  {
    'title':'Strawberry',
    'price':'N2000',
  },
  {
    'title':'Vanilla',
    'price':'N3000',
  }
];



Widget generateSelectionItemWidgets(){
  List<SelectionItem> selectables= [];
  for(var flavor in flavors){
    selectables.add(
        SelectionItem(
          title: flavor['title'],
          price: flavor['price'],
          onPressed: (){
            print('pressed');
          },
//          isSelected: ,
        )
    ) ;
  }
  return Wrap(
    spacing: 5,
    runSpacing: 5,
    children: selectables,
  );
}




class CustomizeScreen extends StatefulWidget {
  @override
  _CustomizeScreenState createState() => _CustomizeScreenState();
}

class _CustomizeScreenState extends State<CustomizeScreen> {


  bool isSelected=false;


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
            child:ListView(
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
        margin: EdgeInsets.symmetric(vertical: 10 ),
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
            generateSelectionItemWidgets()
          ],
        ),
      ),
    );
  }
}

class SelectionItem extends StatelessWidget {
  SelectionItem({@required this.title, @required this.price, this.onPressed,this.isSelected});

  final bool isSelected;
  final String title;
  final String price;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: onPressed,
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
              title,
              style: isSelected?kSELECTION_ITEM_TEXT_ACTIVE:kSELECTION_ITEM_TEXT_INACTIVE,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              price,
              style: isSelected?kPRICE_TEXT_ACTIVE:kPRICE_TEXT_INACTIVE,
            )
          ],
        ),
      ),
    );
  }
}
