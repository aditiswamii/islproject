import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
        title: Text("ISL Wireless"),
             leading: GestureDetector(
                     onTap: () { },
                 child: Icon(
                      Icons.navigation,
                        ),
                      ),
           actions: <Widget>[
             Padding(
                   padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                 onTap: () {},
                    child: Icon(
                      Icons.notifications,
                       ),
    ),

    ),
    ]
       ),
        body: Padding(
        padding: EdgeInsets.all(10),
    child: ListView(
    children: <Widget>[
    Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(20),
    child: Text(
    'Attendance',
    style: TextStyle(fontSize: 30),
    )
    ),
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Text(
            'Leaves',
            style: TextStyle(fontSize: 30),
          )),
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Text(
            'Tours',
            style: TextStyle(fontSize: 30),
          )),
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: Text(
            'Complains',
            style: TextStyle(fontSize: 30),
          )),
    ],
    ),
    ),
    );
  }
}