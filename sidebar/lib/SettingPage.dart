import 'package:flutter/material.dart';
import 'package:sidebar/main.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new DrawerCodeOnly(),
      appBar: new AppBar(
        title: new Text('SETTINGS'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(child: Text("Home settings Body"),),
      
    );
  }
}