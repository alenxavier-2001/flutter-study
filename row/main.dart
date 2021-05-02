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
    body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center, 
      children: <Widget>[
        Text('hello world'),
        FlatButton(
          onPressed: (){},
          color: Colors.redAccent,
          child: Text('click'),
        ),
        Container(
          color: Colors.cyan,
          padding: EdgeInsets.all(30.0),
          child: Text('3rd jfj'),

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