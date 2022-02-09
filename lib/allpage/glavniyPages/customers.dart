// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Customers extends StatefulWidget {
  const Customers({ Key? key }) : super(key: key);

  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(child: Text("Customers"),),
    );
  }
}