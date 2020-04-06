import 'package:flutter/material.dart';
import 'package:flutter_experimentation/main.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key key, @required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    print("List item build with index : $index");
    return Container(
      margin: EdgeInsets.all(defaultSpacing),
      padding: EdgeInsets.all(defaultSpacing),
      color: Colors.white,
      child: Text('$index'),
    );
  }
}
