import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesScreen extends StatefulWidget {
  @override
  _SharedPreferencesScreenState createState() =>
      _SharedPreferencesScreenState();
}

class _SharedPreferencesScreenState extends State<SharedPreferencesScreen> {

  var sharedprefs;
  String _daten = "nix da";

  @override
  void initState() {
    super.initState();
  }

  Future<void> saveConfig(String att, String value) async {
    sharedprefs = await SharedPreferences.getInstance();

    sharedprefs.setString(att, value);
  }

  Future<void> loadConfig(String att) async {
    sharedprefs = await SharedPreferences.getInstance();

    setState(() {
      _daten = sharedprefs.getString(att);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shared preferences"),
      ),
      body: Column(
        children: <Widget>[
          Text(_daten),
          RaisedButton(
            child: Text("save"),
            onPressed: () {
              saveConfig("huhu", "hallo");
            },
          ),
          RaisedButton(
            child: Text("load"),
            onPressed: () {
              loadConfig("huhu");
            },
          )
        ],
      ),
    );
  }
}
