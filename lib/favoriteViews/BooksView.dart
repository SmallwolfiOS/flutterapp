import 'package:flutter/material.dart';

class BooksView extends StatefulWidget {
  BooksView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BooksViewState createState() => _BooksViewState();
}

class _BooksViewState extends State<BooksView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
