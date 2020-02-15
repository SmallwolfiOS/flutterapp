import 'package:flutter/material.dart';

class messagePage extends StatefulWidget {
  messagePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _messagePageState createState() => _messagePageState();
}

class _messagePageState extends State<messagePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('微信'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
