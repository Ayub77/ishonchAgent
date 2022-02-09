// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Prices extends StatefulWidget {
  const Prices({ Key? key }) : super(key: key);

  @override
  _PricesState createState() => _PricesState();
}

class _PricesState extends State<Prices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Prices"),),
    );
  }
}