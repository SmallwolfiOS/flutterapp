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
      body: new ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
              height: 40,
              alignment: Alignment.centerLeft,
//              color: Colors.blue,

              padding: const EdgeInsets.only(left: 20),
//          margin: const EdgeInsets.only(top: 10),
              child: Text('这是第 $index 个cell'),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(width: 0.5,color: Colors.grey,))
              ),
            );
          }), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
