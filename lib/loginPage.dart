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
        centerTitle: true,
        title: Text(null != widget.title ? widget.title : '默认标题',textAlign: TextAlign.right,),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            new Container (
                alignment: Alignment.center,
                child: new Text(
                  'hhha', style: new TextStyle(color: Colors.green,fontSize: 20),)
            ),
            new Container (
                child: new TextField(),
            )
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
