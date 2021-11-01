import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
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
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/appbackground.jpg"),
                  fit: BoxFit.cover,),
              ),
            ),
            const Center(
              child: Text("ISL WIRELESS"),
            )
          ],
        )
    );
  }
}