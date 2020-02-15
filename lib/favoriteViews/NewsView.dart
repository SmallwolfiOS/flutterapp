import 'package:flutter/material.dart';

class NewsView extends StatefulWidget {
  NewsView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NewsViewState createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
