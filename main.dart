import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("haii"),
      centerTitle: true,
      backgroundColor: Colors.red[300],
    ),
    body: Center(
      child: Text(
        "hello hai",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.blue, 
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text("click"),
      backgroundColor: Colors.red[600],
      ),
    )
));