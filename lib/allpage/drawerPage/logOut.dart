// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LogOut extends StatefulWidget {
  const LogOut({ Key? key }) : super(key: key);

  @override
  _LogOutState createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("LogOut"),),
    );
  }
}