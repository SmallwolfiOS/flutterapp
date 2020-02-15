import 'package:flutter/material.dart';
import 'package:flutterapp/addressBook.dart';
import 'package:flutterapp/findPage.dart';
import 'package:flutterapp/messagePage.dart';
import 'package:flutterapp/myPage.dart';
import 'package:flutterapp/secondPage.dart';

class homePage extends StatefulWidget {
  homePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      title: Text('微信'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people),
      title: Text('通讯录'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.find_replace),
      title: Text('发现'),
    ),
    BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我'))
  ];
  final List tabVCs = [messagePage(), addressBook(), findPage(), myPage()];
  int _selectedIndex = 0;
  var currentPage;

  void initState() {
    super.initState();
    currentPage = tabVCs[_selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: new AppBar(
//        centerTitle: true,
//        title: new Text(
//          '微信',
//          style: new TextStyle(color: Colors.white, fontSize: 20.0),
//          textAlign: TextAlign.right,
//        ),
////        backgroundColor: Colors.white,
////        brightness: Brightness.dark,//这里可以修改状态栏的颜色
//        elevation: 0.5,
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed: null),
//          new IconButton(
//              icon: new Icon(Icons.timer),
//              color: Colors.red,
//              onPressed: () => {
//                Navigator.of(context).push(MaterialPageRoute(
//                    builder: (context) => secondPage('111'))),
//              }),
//        ],
//      )
      bottomNavigationBar: BottomNavigationBar(
        items: bottomTabs,
//        selectedFontSize: 13,
//        unselectedFontSize: 13,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            currentPage = tabVCs[_selectedIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}
