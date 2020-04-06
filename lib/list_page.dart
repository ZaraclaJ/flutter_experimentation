import 'package:flutter/material.dart';
import 'package:flutter_experimentation/list_item.dart';
import 'package:flutter_experimentation/main.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List')),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(defaultSpacing),
        color: Colors.lightBlue,
        child: _ListWidget(),
      )),
    );
  }
}

class _ListWidget extends StatelessWidget {
  const _ListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list = List.generate(1000, (index) => index);
    return ListView(
      children: list.map((index) => ListItem(index: index)).toList(),
    );
  }
}
