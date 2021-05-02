import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("haii"),
      centerTitle: true,
      backgroundColor: Colors.red[300],
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20.0),
          color: Colors.cyan,
          child: Text('one'),
        ),
        Container(
          padding: EdgeInsets.all(30.0),
          color: Colors.yellowAccent,
          child: Text('2one'),
        ),
        Container(
          padding: EdgeInsets.all(40.0),
          color: Colors.blue,
          child: Text('three'),
        ),
      ],
    ), 
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text("click"),
      backgroundColor: Colors.red[600],
      ),
    ); 
  }
}