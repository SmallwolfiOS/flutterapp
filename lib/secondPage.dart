import 'package:flutter/material.dart';

class secondPage extends StatefulWidget {
  final String title;
  secondPage(this.title);
  // secondPage({Key key, this.title}) : super(key: key);
  @override
  _secondPageState createState() => _secondPageState();
}

class _secondPageState extends State<secondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
