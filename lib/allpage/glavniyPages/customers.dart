// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agent/allpage/customersAddPage/stroresAbout.dart';
import 'package:agent/allpage/customersClick/customerClick.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/widgets/windowcustomers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Customers extends StatefulWidget {
  const Customers({Key? key}) : super(key: key);
  @override
  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {


  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      backgroundColor: ColorHex.colorFromHex("#E5E5E5"),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        onPressed: () {
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => About()));
        },),
      body: WindowCustomer(),
    );
  }
}


