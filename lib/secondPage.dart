import 'package:flutter/material.dart';

class secondPagePage extends StatefulWidget {
  secondPagePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _secondPagePageState createState() => _secondPagePageState();
}

class _secondPagePageState extends State<secondPagePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
