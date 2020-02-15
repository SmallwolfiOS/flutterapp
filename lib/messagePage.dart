import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutterapp/favoriteViews/BooksView.dart';
import 'package:flutterapp/favoriteViews/MovieView.dart';
import 'package:flutterapp/favoriteViews/NewsView.dart';

class messagePage extends StatefulWidget {
  messagePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _messagePageState createState() => _messagePageState();
}

class _messagePageState extends State<messagePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  var index = 0;

  @override
  initState() {
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('微信'),
          backgroundColor: Colors.green,
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelColor: Colors.white54,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            controller: tabController,
            tabs: <Widget>[
              Tab(
                text: '电影',
              ),
              Tab(
                text: '读书',
              ),
              Tab(
                text: '新闻',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: <Widget>[
            MovieView(),
            BooksView(),
            NewsView(),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}
