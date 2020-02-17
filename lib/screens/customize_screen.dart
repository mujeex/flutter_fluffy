import 'package:flutter/material.dart';
import 'package:flutter_fluffy/constants.dart';

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
//            Expanded(
            ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              children: <Widget>[
                SelectionRow(),
              ],
            ),

//            )
          ],
        ),
      ),
    );
  }
}

class SelectionRow extends StatelessWidget {
  const SelectionRow({
    Key key,
  }) : super(key: key);

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
            Wrap(
              spacing: 5,
              runSpacing: 5,
              children: <Widget>[
                SelectionItem(
                  title: 'Red Velvet',
                  price: 'N5000',
                  onPressed: () {
                    print('selected');
                  },
                ),
                SelectionItem(
                  title: 'Coconut',
                  price: 'N5000',
                  onPressed: () {
                    print('selected');
                  },
                ),
                SelectionItem(
                  title: 'Vanilla',
                  price: 'N500',
                ),
                SelectionItem(
                  title: 'Oreo',
                  price: 'N5000',
                  onPressed: () {
                    print('selected');
                  },
                ),
                SelectionItem(
                  title: 'Chocolate',
                  price: 'N500',
                ),
                SelectionItem(
                  title: 'Blueberry dan',
                  price: 'N500',
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SelectionItem extends StatelessWidget {
  SelectionItem({@required this.title, @required this.price, this.onPressed});

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
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: kOPTION_SELECTION_TEXT,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              price,
              style: kPRICE_TEXT_INACTIVE,
            )
          ],
        ),
      ),
    );
  }
}
