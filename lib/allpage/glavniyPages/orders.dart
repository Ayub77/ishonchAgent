// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({ Key? key }) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text("Orders"),)
    );
  }
}