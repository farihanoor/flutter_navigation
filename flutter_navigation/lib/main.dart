import 'package:flutter/material.dart';

import './firstScreen.dart';
import './secondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //defining route for first Screen
      routes: {
        '/first': (context) => firstScreen(),
        '/second': (context) => SecondScreen(),
      },
      //this removes the red label
      debugShowCheckedModeBanner: false,
      title: 'Navigation',
      theme: ThemeData(
        //AppBar color
        primarySwatch: Colors.pink,
      ),
      home: _Homepage(),
    );
  }
}

class _Homepage extends StatefulWidget {
  @override
  __HomepageState createState() => __HomepageState();
}

class __HomepageState extends State<_Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //the whole screen is white
      backgroundColor: Colors.white,
      appBar: AppBar(
        //text in the App bar
        title: Text(
          'Home Screen',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      //a container is set to place the text and button
      body: Container(
        alignment: Alignment.center,
        //now we set a column ta plact the text and button, on top of the other
        child: Column(
          //mainAxis the the parallel to y-axis for column
          mainAxisAlignment: MainAxisAlignment.center,
          //this container will have 2 <Widget>..
          //i)Text, ii)Padding
          children: <Widget>[
            Text(
              "Home Screen",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            //we define the button here
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 15.0,
                ),
                //color of the button
                color: Colors.pink[600],
                //The main code for navigation starts here
                onPressed: () {
                  //calling route
                  Navigator.pushNamed(context, '/first');
                  /*
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (
                      //we point to the constructor of the firstScreen()
                        (context) => firstScreen()
                      ),
                    ),
                  );*/
                },
                //text displayed on the button
                child: Text(
                  "First Screen",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 15.0,
                ),
                //color of the button
                color: Colors.pink[600],
                //The main code for navigation starts here
                onPressed: () {
                  //calling route
                  Navigator.pushNamed(context, '/second');
                  /*
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (
                      //we point to the constructor of the firstScreen()
                        (context) => firstScreen()
                      ),
                    ),
                  );*/
                },
                //text displayed on the button
                child: Text(
                  "Second Screen",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
