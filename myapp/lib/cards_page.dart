import 'package:flutter/material.dart';

class CardPage extends StatefulWidget{
  @override
  _CardPageStart createState() => new _CardPageStart();
}

class _CardPageStart extends State<CardPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Card Page'),
        backgroundColor: Colors.red,
      ),
    );
  }
}