import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  TextEditingController name = new TextEditingController();
  TextEditingController rollno = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 20,
          title: Text(
            "FIREBASE UP",
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    TextField(
                      controller: name,
                      decoration: InputDecoration(hintText: "Name"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: rollno,
                      decoration: InputDecoration(hintText: "RoLLNO"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Map<String, dynamic> data = {
                          "name": name.text,
                          "rollno": rollno.text
                        };
                        FirebaseFirestore.instance
                            .collection("class")
                            .add(data);
                        //Firestore.instance.collection("test").add(data);
                      },
                      child: Text("SUBMIT"),
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.red,
                        onSurface: Colors.grey,
                        side: BorderSide(color: Colors.blue, width: 2),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
