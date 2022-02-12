// ignore_for_file: prefer_const_constructors

import 'package:agent/funcsion/colorhex.dart';
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
          Window1()
        ],
      ),),
       Container(
      color: ColorHex.colorFromHex("#E5E5E5"),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Window2()
        ],
      ),),
    ],
    onChange: (index) => print(index),
  ),
),
    );
  }
}
class Window1 extends StatelessWidget {
  const Window1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: ColorHex.colorFromHex("#FFFFFF"),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          color: ColorHex.colorFromHex("#F5F5F5"), width: 2)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "“ISHONCH” DO‘KONLAR TARMOG‘I Uchko‘prik filiali",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )),
                  ],
                ),
                    
               Column(
                 children: [
                   Text("№:",style: TextStyle(color: ColorHex.colorFromHex("#8896A1"),fontWeight: FontWeight.w500,fontSize: 12),),
                   Text("404",style: TextStyle(color: ColorHex.colorFromHex("#000000"),fontWeight: FontWeight.w700,fontSize: 14),),
                   
                 ],
               )
              ],
            ),
          ),
          DottedLine(
            dashColor: ColorHex.colorFromHex("#E0E0E0"),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sanasi:",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "01.01.2022",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "assets/images/leftRight.svg",
                  width: 20,
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Summasi",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "1 350 \$",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#FF4842"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Window2 extends StatelessWidget {
  const Window2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: ColorHex.colorFromHex("#FFFFFF"),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                          color: ColorHex.colorFromHex("#F5F5F5"), width: 2)),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nomonov Muhammadayubxon",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Agent mutaxassis",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ],
                ),
                  ],
                ),
                    
               Column(
                 children: [
                   Text("№:",style: TextStyle(color: ColorHex.colorFromHex("#8896A1"),fontWeight: FontWeight.w500,fontSize: 12),),
                   Text("404",style: TextStyle(color: ColorHex.colorFromHex("#000000"),fontWeight: FontWeight.w700,fontSize: 14),),
                   
                 ],
               )
              ],
            ),
          ),
          DottedLine(
            dashColor: ColorHex.colorFromHex("#E0E0E0"),
          ),
          Container(
             padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 14,
                      width: 24,
                      decoration: BoxDecoration(
                        color: ColorHex.colorFromHex("#FFA801"),
                        borderRadius: BorderRadius.circular(4)
                      ),
                    ),
                    SizedBox(width: 8,),
                     Text("Statusi:",style: TextStyle(color: ColorHex.colorFromHex("#8896A1"),fontWeight: FontWeight.w500,fontSize: 12),),
                  ],
                ),
                Text("Kiritildi",style: TextStyle(color: ColorHex.colorFromHex("#000000"),fontWeight: FontWeight.w700,fontSize: 14),),
              ],
            ), 
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sanasi:",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "01.01.2022",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#000000"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "assets/images/leftRight.svg",
                  width: 20,
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Summasi",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#8896A1"),
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Text(
                      "1 350 \$",
                      style: TextStyle(
                          color: ColorHex.colorFromHex("#FF4842"),
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
