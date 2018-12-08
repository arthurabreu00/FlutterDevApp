import 'package:flutter/material.dart';

class BottonsPage extends StatefulWidget{
  @override
  _BottonsPageStart createState() => new _BottonsPageStart();
}

class _BottonsPageStart extends State<BottonsPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Botões Page'),
        backgroundColor: Colors.red,
      ),
    );
  }
}