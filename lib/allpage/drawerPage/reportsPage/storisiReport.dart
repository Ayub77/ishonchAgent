// ignore_for_file: prefer_const_constructors

import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/widgets/storiesReportWindow1.dart';
import 'package:agent/widgets/storiesReportWindow2.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StoriesReport extends StatefulWidget {
  const StoriesReport({Key? key}) : super(key: key);

  @override
  _StoriesReportState createState() => _StoriesReportState();
}

class _StoriesReportState extends State<StoriesReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        foregroundColor: ColorHex.colorFromHex("#FFFFFF").withOpacity(0.6),
        title: Text(
          "Kassa hisoboti",
          style: TextStyle(
              color: ColorHex.colorFromHex("#FFFFFF"), fontSize: 18),
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
      body: Container(
  child: ContainedTabBarView(
    // ignore: prefer_const_literals_to_create_immutables
    tabs: [
      Text('Kirim'),
      Text('Chiqim'),
    ],
     tabBarProperties: TabBarProperties(
            height: 55,
            background: Container(
              color: ColorHex.colorFromHex("#FFFFFF"),
            ),
            indicatorColor: ColorHex.colorFromHex("#2755A5"),
            indicatorWeight: 3,
            labelColor: ColorHex.colorFromHex("#2755A5"),
            unselectedLabelColor: ColorHex.colorFromHex("#8896A1")),
    views: [
      Container(
      color: ColorHex.colorFromHex("#E5E5E5"),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          WindowStoriesReport1()
        ],
      ),),
       Container(
      color: ColorHex.colorFromHex("#E5E5E5"),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          WindowStoriesReport2()
        ],
      ),),
    ],
    onChange: (index) => print(index),
  ),
),
    );
  }
}


