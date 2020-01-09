import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  final String title;

//  loginPage(this.title);
  loginPage({Key key, this.title}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(null != widget.title ? widget.title : '默认标题'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: new Scaffold(
            body: new Text('asd',style: new TextStyle(color: Colors.red,fontSize: 13 ,backgroundColor: Colors.blue ),),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
