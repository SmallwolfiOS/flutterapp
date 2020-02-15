import 'package:flutter/material.dart';
import 'package:flutterapp/homePage.dart';

//void main() => runApp(MyApp());
void main() {
  runApp(MyApp());
  //白色
//  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);//这里可以修改状态栏的颜色
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
//      home: loginPage(
//        title: '登录页面',
//      ),
      home: homePage(),
      theme: ThemeData.light(),
    );
  }
}
