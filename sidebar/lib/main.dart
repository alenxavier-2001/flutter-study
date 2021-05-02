import 'package:flutter/material.dart';
import 'package:sidebar/HomePage.dart';
import 'package:sidebar/SettingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDrawerApp(),
    );
  }
}

class MyDrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: DrawerCodeOnly(),
      appBar: AppBar(
        title: new Text('Drawer'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        ),
      body: new Text('Hey this is the body'),
    );
  }
}


class DrawerCodeOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
     child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              child: Text('My Drawer '),
              decoration: new BoxDecoration(color: Colors.green),
            ),
            new ListTile(
              title: new Text("HOME"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new HomePage()));
              }
            ),
            new ListTile(
              title: new Text("SETTINGS"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new SettingPage()));
              }
            ),
          ],
        ), 
    );
  }
}