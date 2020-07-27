import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation_and_routing/main.dart';
import 'firstscreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: secondscreen(),
    );
  }
}

class secondscreen extends StatefulWidget {
  @override
  _secondscreenState createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen",
        style: TextStyle(
          fontFamily: 'title'
        ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Second Screen",
            style: TextStyle(
              fontFamily: 'title',
              fontSize: 40.0,
            ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RaisedButton(
                  color: Colors.orange,
                  child: Text("Home Screen",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'title',
                      fontSize: 20.0
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ));
                  }),
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 23.0),
                color: Colors.orange,
                child: Text("First Screen",
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 20.0
                ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => myfirstclass(),
                  ));
                }),
          ],
        ),
      ),
    );
  }
}
