import 'package:flutter/material.dart';
import 'package:flutterapp/loginPage.dart';
import 'package:flutterapp/secondPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: loginPage(
        title: '登录页面',
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _mainApp(context);
  }

  Widget _mainApp(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(
          '卦象盾',
          style: new TextStyle(color: Colors.black, fontSize: 20.0),
          textAlign: TextAlign.right,
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0.5,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: null),
          new IconButton(
              icon: new Icon(Icons.timer),
              color: Colors.red,
              onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => secondPage("1111"))),
                  }),
        ],
      ),
      body: _mainView(),
    );
  }

  Widget _mainView() {
    return new Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: new Column(
        children: <Widget>[
          // new Image.asset('Images/point_bg.png',),

          new Stack(
            children: <Widget>[
              new Image.asset('Images/point_bg.png'),
              new Container(
                alignment: Alignment.center,
                child: new Text(
                  '2019.12.30',
                  style: new TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              ),
              new Container(
                child: new Stack(
                  children: <Widget>[
                    new Image.asset('Images/point_main.png'),
                    new Container(
                      child: new Image.asset(
                        'Images/01.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(75, 10, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/02.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(165, 30, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/03.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(255, 10, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/04.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(25, 65, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/05.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(35, 155, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/06.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(25, 245, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/07.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(75, 305, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/08.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(165, 285, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/09.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(255, 305, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/10.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(305, 65, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/11.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(305, 250, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/12.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(285, 155, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/13.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(120, 100, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/14.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(200, 100, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                    new Container(
                      child: new Image.asset(
                        'Images/15.png',
                        color: Colors.black,
                      ),
                      margin: const EdgeInsets.fromLTRB(170, 170, 0, 0),
                      width: 21,
                      height: 43,
                    ),
                  ],
                ),
                margin: const EdgeInsets.fromLTRB(30, 50, 30, 30),
              )
            ],
          ),
          new Container(
            child: new OutlineButton(
              onPressed: () {
                print('1');
              },
              child: Text(
                '盾盘',
                style: new TextStyle(color: Colors.blue, fontSize: 17.0),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              borderSide: new BorderSide(color: Colors.blue),
            ),
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          ),
        ],
      ),
    );
  }
}
