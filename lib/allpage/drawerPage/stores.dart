// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Stores extends StatefulWidget {
  const Stores({ Key? key }) : super(key: key);

  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Stores"),),
    );
  }
}