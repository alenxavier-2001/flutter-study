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
    body: Center(
      child: IconButton(
        onPressed: (){
          print('u clicked me');
        },
        icon: Icon(Icons.alternate_email),
        color: Colors.red
      ),
      ),
    /*body: Center(
      child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.mail,
        ),
        label: Text('haii'),
        color: Colors.tealAccent,
      ),
    ),*/
    /*body: Center( 
      child: FlatButton(
        onPressed: () {
          print("you clicked me");
        },
        child: Text("click here")
        ),
    ),*/

   //for icon
   /* body: Center( 
      child: Icon(
        Icons.airline_seat_flat_angled,
        color: Colors.blue,
        size: 50.0,
      )
    ),*/
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Text("click"),
      backgroundColor: Colors.red[600],
      ),
    ); 
  }
}