// ignore_for_file: prefer_const_constructors

import 'package:agent/allpage/drawerPage/reportsPage/orderReport.dart';
import 'package:agent/allpage/drawerPage/reportsPage/storisiReport.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';

import 'characteristics.dart';
import 'indicators.dart';

class About extends StatefulWidget {
  const About({ Key? key }) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        title: Text("Do'kon haqida",style: TextStyle(color: ColorHex.colorFromHex("#FFFFFF")),),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Characteristics()));    
              },
              child: Container(
                height: 80,
                padding: EdgeInsets.only(left: 25,right: 10),
                width: double.infinity,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Xarakteristikasi",style: TextStyle(color: ColorHex.colorFromHex("#2755A5"),fontSize: 16,fontWeight: FontWeight.bold),),
                    Icon(Icons.chevron_right_outlined,color: ColorHex.colorFromHex("#8896A1"),)
                  ],
                ),
                
              ),
            ),
            Container(height: 1,width: double.infinity,color: ColorHex.colorFromHex("#F5F5F5"),),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Indicators()));
              },
              child: Container(
                height: 80,
                padding: EdgeInsets.only(left: 25,right: 10),
                width: double.infinity,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ko‘rsatkichlari",style: TextStyle(color: ColorHex.colorFromHex("#2755A5"),fontSize: 16,fontWeight: FontWeight.bold),),
                    Icon(Icons.chevron_right_outlined,color: ColorHex.colorFromHex("#8896A1"),)
                  ],
                ),
                
              ),
            ),
            Container(height: 1,width: double.infinity,color: ColorHex.colorFromHex("#F5F5F5"),)
          ],
        ),
      )
    );
  }
}