import 'package:flutter/material.dart';

import './main.dart';

class firstScreen extends StatefulWidget {
  @override
  _firstScreenState createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //this removes the automatic back button in the AppBar
        automaticallyImplyLeading: false,
        //text displayed in the AppBar
        title: Text(
          'First Screen',
           style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w600
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
              fontSize: 30.0,
              fontWeight: FontWeight.w600,            
           ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 15.0,
              ),
              color: Colors.pink[600],
              onPressed: () {
                Navigator.pop(context);
              //placing Home Screen on top of first scree
              /*
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (
                        (context) => MyApp()
                      ),
                    ),
                );
              */
              },
              child: Text(
                "Home Screen",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0
                ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}