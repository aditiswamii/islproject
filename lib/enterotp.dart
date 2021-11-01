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
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Please Enter the OTP',
                      style: TextStyle(fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextField(
                    decoration: new InputDecoration(labelText: "OTP"),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: const Text(
                      '02.00',
                      style: TextStyle(fontSize: 30),
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.lightGreenAccent,
                      child: Text('Submit'),
                      onPressed: () {
                        print("OTP submitted");
                      },
                    )),
              ],
            )));
  }
}