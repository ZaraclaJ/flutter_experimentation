import 'package:flutter/material.dart';
import 'package:flutter_experimentation/list_item.dart';
import 'package:flutter_experimentation/main.dart';

class SliverListPage extends StatelessWidget {
  const SliverListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliver List')),
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

    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            list.map((index) => ListItem(index: index)).toList(),
          ),
        ),
      ],
    );
  }
}
