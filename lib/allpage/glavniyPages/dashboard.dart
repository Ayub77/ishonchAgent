// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agent/funcsion/colorhex.dart';
import 'package:agent/funcsion/dateTime.dart';
import 'package:agent/funcsion/trenumber.dart';
import 'package:agent/network/apiConstanta.dart/api.dart';
import 'package:agent/network/networkServices.dart/network.dart';
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
  Map<String, double> dataMap = {};
  var res;
  bool chek = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }

  getApi() async {
    res = await Network.getApi(Api.dashboard, Api.emptyParams());
    if (!res['error']) {
      dataMap.addAll({
        "unfulfilled": double.parse(res['data']["unfulCount"].toString()),
        "done": double.parse(res['data']["doneCount"].toString()),
      });
      chek = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorHex.colorFromHex("#FAFAFA"),
        body: chek
            ? Container(
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
                                  Text(
                                    "Salom,Bugun " +
                                        date.day.toString() +
                                        "-" +
                                        FunkDateTime.year(date.month) +
                                        "," +
                                        FunkDateTime.date(date.weekday),
                                    style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            ColorHex.colorFromHex("#000000")),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(res['data']['agentName'].toString(),
                                      style: TextStyle(
                                          fontFamily: "Gilroy",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color:
                                              ColorHex.colorFromHex("#000000")))
                                ],
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: CircleAvatar(
                                    backgroundColor:
                                        ColorHex.colorFromHex("#FAFAFA"),
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
                          padding: EdgeInsets.only(
                              left: 13, right: 13, top: 16, bottom: 16),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Boriladigan joylar soni:",
                                    style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            ColorHex.colorFromHex("#000000")),
                                  ),
                                  Text(
                                    res['data']['allCount'].toString() + " ta",
                                    style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            ColorHex.colorFromHex("#000000")),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 3),
                                color: ColorHex.colorFromHex("#FFFFFF"),
                                child: PieChart(
                                  dataMap: dataMap,
                                  colorList: colorlist,
                                  animationDuration:
                                      Duration(milliseconds: 800),
                                  chartLegendSpacing: 20,
                                  chartRadius:
                                      MediaQuery.of(context).size.width * 0.5,
                                  initialAngleInDegree: 42,
                                  chartType: ChartType.ring,
                                  ringStrokeWidth: 22,
                                  centerText:
                                      res['data']['doneCount'].toString() +
                                          " ta",
                                  centerTextStyle: TextStyle(
                                      fontFamily: "Gilroy",
                                      fontSize: 28,
                                      fontWeight: FontWeight.w700,
                                      color: ColorHex.colorFromHex("#000000")),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 16,
                                        width: 16,
                                        margin: EdgeInsets.only(right: 5),
                                        decoration: BoxDecoration(
                                            color: ColorHex.colorFromHex(
                                                "#E0E0E0"),
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                      ),
                                      Text(
                                        "Boriladigan joylar",
                                        style: TextStyle(
                                            fontFamily: "Gilroy",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: ColorHex.colorFromHex(
                                                "#000000")),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 16,
                                        width: 16,
                                        margin: EdgeInsets.only(right: 5),
                                        decoration: BoxDecoration(
                                            color: ColorHex.colorFromHex(
                                                "#2755A5"),
                                            borderRadius:
                                                BorderRadius.circular(3)),
                                      ),
                                      Text(
                                        "Borilgan joylar",
                                        style: TextStyle(
                                            fontFamily: "Gilroy",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: ColorHex.colorFromHex(
                                                "#000000")),
                                      ),
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
                                    backgroundColor:
                                        ColorHex.colorFromHex("#FAFAFA"),
                                    radius: 23,
                                    child: SvgPicture.asset(
                                      "assets/images/sumka.svg",
                                      width: 23,
                                      height: 23,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Bugungi",style: TextStyle(
                                          fontFamily: "Gilroy",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              ColorHex.colorFromHex("#000000")),),
                                      Text("buyurtmalar soni",style: TextStyle(
                                          fontFamily: "Gilroy",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              ColorHex.colorFromHex("#000000"))),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 10),
                                  decoration: BoxDecoration(
                                      color: ColorHex.colorFromHex("#FF4842")
                                          .withOpacity(0.16),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Text(
                                    "20 ta",
                                    style: TextStyle(
                                          fontFamily: "Gilroy",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color:
                                              ColorHex.colorFromHex("#FF4842")),
                                  ))
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
                                    backgroundColor:
                                        ColorHex.colorFromHex("#FAFAFA"),
                                    radius: 23,
                                    child: SvgPicture.asset(
                                      "assets/images/kashalok.svg",
                                      width: 23,
                                      height: 23,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Olingan",style: TextStyle(
                                          fontFamily: "Gilroy",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              ColorHex.colorFromHex("#000000")),),
                                      Text("summasi",style: TextStyle(
                                          fontFamily: "Gilroy",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              ColorHex.colorFromHex("#000000")),),
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
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
