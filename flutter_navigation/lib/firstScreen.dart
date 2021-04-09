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
        automaticallyImplyLeading: false,
        title: Text(
          'FirstScreen' 
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "FirstScreen",
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
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (
                        (context) => MyApp()
                      ),
                    ),
                  );
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