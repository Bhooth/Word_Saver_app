import 'package:flutter/material.dart';
import 'package:world_time/Pages/Saved.dart';
import 'package:world_time/Pages/Add.dart';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}Future
 navigateToSubPage1(context)
async{
  Navigator.push(context, MaterialPageRoute(builder: (context) => Saved()));
}
Future navigateToSubPage2(context)
async{
  Navigator.push(context, MaterialPageRoute(builder: (context) => Add()));
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Word Saver'),
        centerTitle: true,
        backgroundColor: Colors.red[600]
    ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    navigateToSubPage2(context);
                  },
                  child: Text('Add Word'),
                  color: Colors.lightBlue,
                  padding: EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 50.0),
                ),
                SizedBox(width: 40.0),
                FlatButton(
                  onPressed: () {
                    navigateToSubPage1(context);
                  },
                  child: Text('Saved Words'),
                  color: Colors.lightBlue,
                  padding: EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 50.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
