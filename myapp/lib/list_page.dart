import 'package:flutter/material.dart';

class ListPage extends StatefulWidget{
  @override
  _ListPageStart createState() => new _ListPageStart();
}

class _ListPageStart extends State<ListPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('List Page'),
        backgroundColor: Colors.red,
      ),
    );
  }
}