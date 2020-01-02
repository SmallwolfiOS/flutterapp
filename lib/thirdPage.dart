import 'package:flutter/material.dart';

class thirdPage extends StatefulWidget {
  final String title;
  thirdPage(this.title);
//  thirdPage({Key key, this.title}) : super(key: key);


  @override
  _thirdPageState createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child:  Listener(
            child: new Text('我勒个擦',),
            onPointerDown: (event){
              print('1111');
            },
          )
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}