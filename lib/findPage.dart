import 'package:flutter/material.dart';

class findPage extends StatefulWidget {
  findPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _findPageState createState() => _findPageState();
}

class _findPageState extends State<findPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('发现'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
