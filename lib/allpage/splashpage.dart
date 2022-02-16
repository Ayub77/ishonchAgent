// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:agent/allpage/Glavniy.dart';
import 'package:agent/allpage/login_page.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  _initTimer()async{
   var box = Hive.box("MyBaza");
   var res = await box.get("auth");
    Timer(Duration(seconds: 2), () {
      if(res==null){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
      }else{
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Glavniy()));  
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors:[
              ColorHex.colorFromHex("#2755A5").withOpacity(0.9),
              ColorHex.colorFromHex("#2755A5").withOpacity(0.8),
            ] )
        ),
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(bottom: 40),
        child: Text(
          "AGENT",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
