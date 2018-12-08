import 'package:flutter/material.dart';

import 'bottons_page.dart';
import 'cards_page.dart';
import 'list_page.dart';

class HomePage extends StatefulWidget{
    @override
    _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>{
  String avatar = 'https://scontent.fplu3-1.fna.fbcdn.net/v/t1.0-9/17361673_757817504383947_4784639814168211815_n.jpg?_nc_cat=100&_nc_ht=scontent.fplu3-1.fna&oh=d59706c50d9b16a90ec5a7925d80712b&oe=5C68785F';
  String bgHeader = 'http://images.unsplash.com/photo-1530482817083-29ae4b92ff15?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEyMDd9';

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
            new UserAccountsDrawerHeader(
              accountName: new Text("Arthur Tavares"),
              accountEmail: new Text("arthurabreu00@gmail.com"),
              currentAccountPicture: new GestureDetector(
                onTap: ()=> print('Toque na imagem'),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(avatar),
                ),
              ),
              decoration: new BoxDecoration(
                
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new  NetworkImage(bgHeader),
                ),
              ),
            ),
            new ListTile(
              title: new Text('Botões'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new BottonsPage()
                ));
              }
            ),
            new ListTile(
              title: new Text('Listas'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new ListPage()
              ));
              }
            ),
           
            new ListTile(
            title: new Text('Cards'),
            trailing: new Icon(Icons.arrow_forward),
            onTap: (){
            Navigator.of(context).pop();
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new CardsPage()
            ));
            }
            ), new Divider(),
            new ListTile(
              title: new Text('Cancelar'),
              trailing: new Icon(Icons.close),
              onTap: (){
                Navigator.of(context).pop();
              },
            )
          ],
          
        ),
      ),
      body: new Center(
        child: new Text('Criando meu primeiro aplicativo, By> Arthur Tavares'), 
      ),
    );
  }
}