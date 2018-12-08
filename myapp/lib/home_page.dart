import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
    @override
    _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Widgets App"),
        backgroundColor: Colors.red,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('Botões'),
              trailing: new Icon(Icons.cancel),
            ),
            new Divider() // Divider;
          ],
        ),
      ),
      body: new Center(
        child: new Text('Olá mundo'), 
      ),
    );
  }
}