import 'package:flutter/material.dart';

class addressBook extends StatefulWidget {
  addressBook({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _addressBookState createState() => _addressBookState();
}

class _addressBookState extends State<addressBook> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('通讯录'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
