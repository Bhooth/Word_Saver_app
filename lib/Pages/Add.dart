import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}
class _AddState extends State<Add> {
  String word1,meaning1,s;
  Future<void> insertWord() async {
    final prefs = await SharedPreferences.getInstance();
    final myStringList = prefs.getStringList('my_string_list_key') ?? [""];
    setState(() {
      s="$word1 : $meaning1";
    });
    prefs.setStringList('my_string_list_key', ['$myStringList',s]);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              onPressed: () {Navigator.pop(context);},
              child: Text('Back'),
              color: Colors.red,
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (text){
                word1=text;
              } ,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Word you wanna save',
              ),
              maxLength: 20,
              style: TextStyle(
                color: Colors.red,
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (text){
                meaning1=text;
              } ,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Meaning',
              ),
              maxLength: 100,
              style: TextStyle(
                color: Colors.red,
                fontSize: 18.0,
              ),
            ),
          ),
          RaisedButton(
            onPressed: () {
              insertWord();
              Navigator.pop(context);
              },
            child: Text("Save"),
          )
        ],
      ),
    );
  }
}
