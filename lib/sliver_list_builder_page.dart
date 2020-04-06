import 'package:flutter/material.dart';
import 'package:flutter_experimentation/list_item.dart';
import 'package:flutter_experimentation/main.dart';

class SliverListBuilderPage extends StatelessWidget {
  const SliverListBuilderPage({Key key}) : super(key: key);

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
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListItem(
                index: list[index],
              );
            },
            childCount: list.length,
          ),
        ),
      ],
    );
  }
}
