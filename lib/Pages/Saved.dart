import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class Saved extends StatefulWidget {
  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
    String s="HEY";


    Future<void> read() async {
      final prefs = await SharedPreferences.getInstance();
      final myStringList = prefs.getStringList('my_string_list_key') ?? ["null"];
      setState(() {
        s=myStringList.join("\n");
      });
    }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RaisedButton(
              onPressed: () {Navigator.pop(context);},
              child: Text('Back'),
              color: Colors.red,
            ),
          ),
          SizedBox(height: 100.0),
          RaisedButton(
            onPressed: () {read();},
            child: Text("Press to Show Words"),
          ),
          Text("$s"),
        ],
      ),
    );
  }
}

