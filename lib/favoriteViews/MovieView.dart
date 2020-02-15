import 'package:flutter/material.dart';

class MovieView extends StatefulWidget {
  MovieView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MovieViewState createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
