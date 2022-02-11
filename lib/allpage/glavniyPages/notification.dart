// ignore_for_file: prefer_const_constructors

import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({ Key? key }) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        title: Text("Eslatmalar",style: TextStyle(color:ColorHex.colorFromHex("#FFFFFF")),),
        foregroundColor: ColorHex.colorFromHex("#FFFFFF").withOpacity(0.6),
        centerTitle: true,
      ),
    );
  }
}