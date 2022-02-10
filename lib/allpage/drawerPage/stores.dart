// ignore_for_file: prefer_const_constructors

import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Stores extends StatefulWidget {
  const Stores({Key? key}) : super(key: key);

  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ColorHex.colorFromHex("#8896A1"),
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
      
        title: Text(
          "Biriktirilgan do'konlar",
          style: TextStyle(color: ColorHex.colorFromHex("#FFFFFF"),fontSize: 17.9),
        ),
        
        elevation: 0.5,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/images/search.svg")),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/images/filter.svg")),
          SizedBox(
            width: 7,
          )
        ],
      ),
      body: Center(
        child: Text("Stores"),
      ),
    );
  }
}
