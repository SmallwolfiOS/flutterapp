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
        title: Text(
          null != widget.title ? widget.title : '默认标题',
          textAlign: TextAlign.right,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            new Container(
                alignment: Alignment.center,
                child: new Text(
                  'Logo',
                  style: new TextStyle(color: Colors.green, fontSize: 20),
                )),
            new Container(
              child: new TextField(
                decoration: InputDecoration(
//                    border: InputBorder.none,//无边框
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  labelText: '请输入一个手机号',
                  prefixIcon: Icon(Icons.phone),
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey),
//                  filled: true,
//                  fillColor: Color(0xffaaaaaa),//内部填充颜色
                  helperText: '只能输入数字',
                  helperStyle: new TextStyle(
                      fontSize: 14,
                      color: Colors.deepOrange

                  ),
                  hintText: '请输入本人的手机号码',//placeholder
                  hintStyle: new TextStyle(
                      fontSize: 14
                  ),
                ),
                textAlign: TextAlign.left,
                cursorColor: Colors.red,//自定义光标的颜色
                maxLines: 1,
                obscureText: true,//是否隐藏输入,需要配合maxlines使用
                maxLength: 11,
                  onEditingComplete:_editingComplete ,
              ),
            )
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }



  void _editingComplete(){
    print('1111111');
  }
}
