// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Settings"),),
    );
  }
}