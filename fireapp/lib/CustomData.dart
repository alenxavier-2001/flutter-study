import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class CustomData extends StatefulWidget {
  CustomData({this.app});
  final FirebaseApp app;
  @override
  _CustomDataState createState() => _CustomDataState();
}

class _CustomDataState extends State<CustomData> {
  final referencedatase = FirebaseDatabase.instance;

  final movieName = 'MovieTitle';
  final movieController = TextEditingController();

  DatabaseReference _movieRef;

  @override
  void initState() {
    final FirebaseDatabase database = FirebaseDatabase(app: widget.app);
    _movieRef = database.reference().child('Movies');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ref = referencedatase.reference();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('movies'),
        ),
        backgroundColor: Colors.grey,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Text(
                      movieName,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      controller: movieController,
                      textAlign: TextAlign.center,
                    ),
                    FlatButton(
                      color: Colors.blue,
                      child: Text('Save Movie'),
                      textColor: Colors.white,
                      onPressed: () {
                        ref
                            .child('movies')
                            .push()
                            .child(movieName)
                            .set(movieController.text)
                            .asStream();

                        movieController.clear();
                      },
                    ),
                    Flexible(
                        child: new FirebaseAnimatedList(
                            shrinkWrap: true,
                            query: _movieRef,
                            itemBuilder: (BuildContext context,
                                DataSnapshot snapshot,
                                Animation<double> animation,
                                int index) {
                              return new ListTile(
                                trailing: IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () =>
                                      _movieRef.child(snapshot.key).remove(),
                                ),
                                title: new Text(snapshot.value['MovieTitle']),
                              );
                            })),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
