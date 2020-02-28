import 'package:flutter/material.dart';

class ComboRow extends StatelessWidget {
  final List<String> combos = [
    'vanilla',
    'strawberry',
    'chocolate',
    'Coconut',
    'Apple'
  ];

  @override
  Widget build(BuildContext context) {
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
                itemCount: combos.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: ActionChip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey.shade800,
                        child: Text('AB'),

                      ),
                      label: Text('${combos[index]}'),
                      onPressed: () {
                        print("delete item at $index index");
                      },

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
                ),
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Buy Now'),
              )
            ],
          )
        ],
      ),
    );
  }
}
