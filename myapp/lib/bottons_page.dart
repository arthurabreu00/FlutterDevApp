import 'package:flutter/material.dart';

class BottonsPage extends StatefulWidget {
  @override
  _BottonsPageStart createState() => new _BottonsPageStart();
}

class _BottonsPageStart extends State<BottonsPage> {
  ShapeBorder _buttonShape;

  @override
  Widget build(BuildContext context) {
    final ButtonThemeData buttonTheme =
        ButtonTheme.of(context).copyWith(shape: _buttonShape);
    return new Scaffold(
      body: new DefaultTabController(
        length: 5,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                const Tab(text: 'Raised'),
                const Tab(text: 'Flat'),
                const Tab(text: 'Outline'),
                const Tab(text: 'Icon'),
                const Tab(text: 'Action')
              ],
            ),
            title: new Text('Botões'),
            backgroundColor: Colors.red,
          ),
          body: new TabBarView(
            children: <Widget>[
              ButtonTheme.fromButtonThemeData(
                data: buttonTheme,
                child: buildRaisedButtom(
                    'Raised button, adicionam dimensão a layouts simples e enfatiza funções em espaços ocupados ou ambos'),
              ),
              const Text('Flat'),
              const Text('Outline'),
              const Text('Icon'),
              const Text('Action')
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildRaisedButtom(title) {
  return new Align(
    alignment: const Alignment(0.0, -0.2),
    child: new Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Text(
          title,
          textAlign: TextAlign.center,
          style: new TextStyle(fontWeight: FontWeight.bold),
        ),
        new ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new RaisedButton(
              child: const Text('RAISED BUTTON'),
              onPressed: () {},
            ),
            const RaisedButton(
                child: const Text('DESABILITADO'), onPressed: null)
          ],
        ),
        new ButtonBar(mainAxisSize: MainAxisSize.min, children: <Widget>[
          new RaisedButton.icon(
            icon: const Icon(
              Icons.add,
              size: 18.0,
            ),
            label: const Text('Raised Button'),
            onPressed: () {},
          ),
                    new RaisedButton.icon(
            icon: const Icon(
              Icons.add,
              size: 18.0,
            ),
            label: const Text('Desabilitado'),
            onPressed: null,
          )
        ])
      ],
    ),
  );
}
