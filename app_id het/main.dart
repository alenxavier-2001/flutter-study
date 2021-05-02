import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: HetCard(),
));

class HetCard extends StatefulWidget{
  @override
  _HetCardState createState() => _HetCardState();
}

class _HetCardState extends State<HetCard> {
  int level = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Het id card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;

          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],

      ),
     body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/rrsvr.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0) ,
            Text(
              'HETNAIL',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0) ,
            Text(
              '$level',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
             SizedBox(height: 30.0),
             Row(
               children: <Widget>[
                 Icon(
                   Icons.email,
                   color: Colors.grey[400],
                 ),
                 SizedBox(width: 30.0),
                 Text(
                   'hello.hhmail.com',
                   style: TextStyle(
                     //fontSize: 10.0,
                     letterSpacing: 1.0,
                     color: Colors.grey[100],
                   ),
                 )

               ],

             ),

          ],
        ),
      ),
    );
  }
}

