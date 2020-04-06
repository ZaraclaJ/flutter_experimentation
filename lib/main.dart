import 'package:flutter/material.dart';
import 'package:flutter_experimentation/list_builder_page.dart';
import 'package:flutter_experimentation/list_page.dart';
import 'package:flutter_experimentation/sliver_list_builder_page.dart';
import 'package:flutter_experimentation/sliver_list_page.dart';

const double defaultSpacing = 8;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter experiment',
      home: Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              _HomeButton(
                page: ListPage(),
                text: 'List',
              ),
              _HomeButton(
                page: ListBuilderPage(),
                text: 'List Builder',
              ),
              _HomeButton(
                page: SliverListPage(),
                text: 'Sliver List',
              ),
              _HomeButton(
                page: SliverListBuilderPage(),
                text: 'Sliver List Builder',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeButton extends StatelessWidget {
  const _HomeButton({Key key, @required this.page, @required this.text}) : super(key: key);

  final Widget page;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      onPressed: () => Navigator.push<void>(
        context,
        MaterialPageRoute<void>(builder: (context) => page),
      ),
    );
  }
}
