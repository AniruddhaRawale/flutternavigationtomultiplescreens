import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'second_screen.dart';

class firstscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {

        '/second':(context) => secondscreen(),
      },

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: myfirstclass(),
    );
  }
}

class myfirstclass extends StatefulWidget {
  @override
  _myfirstclassState createState() => _myfirstclassState();
}

class _myfirstclassState extends State<myfirstclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text("First Screen",
    style: TextStyle(
    fontFamily: 'headline',
    fontSize: 20.0,

    ),
    ),
    ),
    body: Container(
    alignment: Alignment.center,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Text(
    "First Screen",
    style: TextStyle(
    fontFamily: 'title',
    fontSize: 40.0
    ),
    ),
    RaisedButton(

    color: Colors.pinkAccent,
    padding: EdgeInsets.symmetric(horizontal: 23.0),

    child: Text("Home Screen",
    style: TextStyle(
    fontSize: 20.0,
    fontFamily: 'title',
    color: Colors.white
    ),
    ),
    onPressed: (){
    //to go back to the original screen
    //you don't have to write whole code of push
    // as it saves context

     Navigator.push(context, MaterialPageRoute(
       builder: (context) => MyHomePage(),
     ));
    }
    ),
    RaisedButton(

    color: Colors.pinkAccent,

    child: Text("Second Screen",
    style: TextStyle(
    fontSize: 20.0,
    fontFamily: 'title',
    color: Colors.white
    ),
    ),
    onPressed: (){
    //to go back to the original screen
    //you don't have to write whole code of push
    // as it saves context
      Navigator.pushNamed(context, '/second');

    }
    ),
    ],
    ),
    ),

    );
  }
}

