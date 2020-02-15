import 'package:flutter/material.dart';

class myPage extends StatefulWidget {
  myPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _myPageState createState() => _myPageState();
}

class _myPageState extends State<myPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("我"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
