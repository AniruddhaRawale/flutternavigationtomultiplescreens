import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'second_screen.dart';

//the whole soul of this app is if you want to go to
//new page use routes and navigator.pushed
//otherwise if you just want to come back to app direction already mentioned
//dont use routes navigator.push() as always

//ie if you want to go from home page to first screen or second screen use routes
//but if you want to go back from first to home dont use routes
//use navigator.push()

//same if you want to go to first screen to second screen use routes as it is
//new routes not mentioned earlier
//but if you want to come back to home use navigator.push()

//in second screen if you want to go from second to first
// or second to home you should use navigator.push because path is
//already mentioned while coming from first screen to second
//or home to second scren so using routes is not required here

//basically same route or path can be used for both incoming or outgoing
//keep that in mind otherwise error is 100% sure


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //to route to more than one screen use this
      //this is way better than using push pop every time
      routes: {
        '/first':(context) => myfirstclass(),
        '/second':(context) => secondscreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //to turn off the back icon near apppbar which comes as soon as you
        //change page from one to another
        automaticallyImplyLeading: false,
        title: Text("Navigation and Routing",
        style: TextStyle(
          fontSize: 20.00,
          color: Colors.white
        ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("HomeScreen",
              style: TextStyle(
                fontFamily: 'title',
                fontSize: 40.00,
                fontWeight: FontWeight.w300
              ),

            ),
            RaisedButton(
              color: Colors.red,

              child: Text("Screen 1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 25.0,
               fontFamily: 'headline'
              ),
              ),
                onPressed: (){
                //this code is used to push app from one page to another
                  // you have to write another push method
                  // if you want to go to third screen
                  // you have to write push code once again

                  //it saves the context from where we are coming
                Navigator.push(context, MaterialPageRoute(
            builder: ((context) => firstscreen()),
                ));

                //instead of using push every time you can use more
                  //convienient way

                }),
            RaisedButton(
                color: Colors.red,

                child: Text("Screen 2",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25.0,
                      fontFamily: 'headline'
                  ),
                ),
                onPressed: (){
                  //this code is used to push app from one page to another
                  // you have to write another push method
                  // if you want to go to third screen
                  // you have to write push code once again

                  //it saves the context from where we are coming
//                  Navigator.push(context, MaterialPageRoute(
//                  builder: ((context) => firstscreen()),
//                ));

                  //instead of using push every time you can use more
                  //convienient way
                  Navigator.pushNamed(context, '/second');
                })
          ],
        ),
      ),
    );
  }
}
