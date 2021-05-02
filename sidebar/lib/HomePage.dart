
import 'package:flutter/material.dart';
import 'package:sidebar/main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new DrawerCodeOnly(),
      appBar: new AppBar(
        title: new Text('HOME'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(child: Text("Home page Body"),),
      
    );
  }
}