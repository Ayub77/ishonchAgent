// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/funcsion/dateTime.dart';
import 'package:agent/funcsion/trenumber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pie_chart/pie_chart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var date = DateTime.now();

  List<Color> colorlist = [
    ColorHex.colorFromHex("#E0E0E0"),
    ColorHex.colorFromHex("#2755A5"),
  ];
  Map<String, double> dataMap = {
    "Flutter": 15,
    "React": 35,
    
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorHex.colorFromHex("#FAFAFA"),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: ColorHex.colorFromHex("#FFFFFF"),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 5,
                              spreadRadius: 3)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Salom,Bugun " +
                                date.day.toString() +
                                "-" +
                                FunkDateTime.year(date.month) +
                                "," +
                                FunkDateTime.date(date.weekday)),
                            SizedBox(
                              height: 4,
                            ),
                            Text("Nomonov Muhammadayubxon",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16))
                          ],
                        ),
                        IconButton(
                            onPressed: () {
                              print("object");
                            },
                            icon: CircleAvatar(
                              backgroundColor: ColorHex.colorFromHex("#FAFAFA"),
                              
                              child: SvgPicture.asset(
                                "assets/images/locatsion.svg",
                                height: 20,
                                width: 20,
                              ),
                            ))
                      ],
                    ),
                  )),
             
             
             
             
             
             
             
              Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                     padding: EdgeInsets.only(left: 13, right: 13,top: 16,bottom: 16),
                    decoration: BoxDecoration(
                        color: ColorHex.colorFromHex("#FFFFFF"),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 5,
                              spreadRadius: 3)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text("Boriladigan joylar soni:"),
                         Text("50 ta",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                       ],
                     ),
                      Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                  color: ColorHex.colorFromHex("#FFFFFF"),
                  child: PieChart(
                    dataMap: dataMap,
                    colorList: colorlist,
                    animationDuration: Duration(milliseconds: 800),
                    chartLegendSpacing: 20,
                    chartRadius: MediaQuery.of(context).size.width * 0.5,
                    initialAngleInDegree: 42,
                    chartType: ChartType.ring,
                    ringStrokeWidth: 22,
                    centerText: "35 ta",
                    centerTextStyle: TextStyle(
                        color: ColorHex.colorFromHex("#000000"),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    legendOptions: LegendOptions(
                      showLegendsInRow: false,
                      legendPosition: LegendPosition.bottom,
                      showLegends: false,
                      legendShape: BoxShape.circle,
                      legendTextStyle: TextStyle(
                        color: ColorHex.colorFromHex("#003171"),
                      ),
                    ),
                    chartValuesOptions: ChartValuesOptions(
                        showChartValueBackground: true,
                        showChartValues: false,
                        showChartValuesInPercentage: true,
                        showChartValuesOutside: true,
                        decimalPlaces: 1,
                        chartValueBackgroundColor: Colors.white),
                  ),
                ),
                      Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children: [
                             Container(
                               height: 18,
                               width: 18,
                               margin: EdgeInsets.only(right: 5),
                               decoration: BoxDecoration(
                                 color: ColorHex.colorFromHex("#E0E0E0"),
                                 borderRadius: BorderRadius.circular(4)
                               ),
                             ),
                             Text("Boriladigan joylar"),
                           ],
                         ),
                          Row(
                           children: [
                             Container(
                               height: 18,
                               width: 18,
                               margin: EdgeInsets.only(right: 5),
                               decoration: BoxDecoration(
                                 color: ColorHex.colorFromHex("#2755A5"),
                                 borderRadius: BorderRadius.circular(4)
                               ),
                             ),
                             Text("Borilgan joylar"),
                           ],
                         ),
                       ],
                     ),
                      ],
                    ),    
                  )),
             
             
             
             
             
             
             
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 13),
                    decoration: BoxDecoration(
                        color: ColorHex.colorFromHex("#FFFFFF"),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 5,
                              spreadRadius: 3)
                        ]),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                              backgroundColor: ColorHex.colorFromHex("#FAFAFA"),
                              radius: 23,
                              child: SvgPicture.asset(
                                "assets/images/sumka.svg",
                                width: 23,
                                height: 23,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bugungi"),
                                Text("buyurtmalar soni"),
                              ],
                            )
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                            decoration: BoxDecoration(
                            color: ColorHex.colorFromHex("#FF4842").withOpacity(0.16),
                            borderRadius: BorderRadius.circular(6)
                            ),
                            child: Text("20 ta",style: TextStyle(color: ColorHex.colorFromHex("#FF4842"),fontWeight: FontWeight.bold,fontSize: 17),))
                          ],
                        ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 13),
                    decoration: BoxDecoration(
                        color: ColorHex.colorFromHex("#FFFFFF"),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 5,
                              spreadRadius: 3)
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                              backgroundColor: ColorHex.colorFromHex("#FAFAFA"),
                              radius: 23,
                              child: SvgPicture.asset(
                                "assets/images/kashalok.svg",
                                width: 23,
                                height: 23,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Olingan"),
                                Text("summasi"),
                              ],
                            )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("data"),
                                Text("data"),
                              ],
                            )
                          ],
                        ),
                  )),
            ],
          ),
        ));
  }
}
