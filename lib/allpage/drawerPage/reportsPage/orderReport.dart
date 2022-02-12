// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agent/funcsion/colorhex.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderReport extends StatefulWidget {
  const OrderReport({Key? key}) : super(key: key);

  @override
  _OrderReportState createState() => _OrderReportState();
}

class _OrderReportState extends State<OrderReport> {
  var _date1 = DateTime(DateTime.now().year, DateTime.now().month, 1);
  var _date2 =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  String date1 = '';
  String date2 = '';
  bool dateOrTitle = false;

  dateTimeRangePicker() async {
    DateTimeRange? picked = await showDateRangePicker(
      saveText: 'Saqlash',
      helpText: 'Oraliqni tanlash',
      context: context,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
      initialDateRange: DateTimeRange(
        end: _date2,
        start: _date1,
      ),
    );
    if (picked != null) {
      _date1 = picked.start;
      _date2 = picked.end;
      date1 =
          "${_date1.day.toString().length > 1 ? _date1.day.toString() : "0" + _date1.day.toString()}.${_date1.month.toString().length > 1 ? _date1.month.toString() : "0" + _date1.month.toString()}.${_date1.year.toString()}";
      date2 =
          "${_date2.day.toString().length > 1 ? _date2.day.toString() : "0" + _date2.day.toString()}.${_date2.month.toString().length > 1 ? _date2.month.toString() : "0" + _date2.month.toString()}.${_date1.year.toString()}";

      dateOrTitle = true;
      setState(() {});
    }
  }


 final _controller = PersistentBottomSheetController; // <------ Instance variable
final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorHex.colorFromHex("#E5E5E5"),
      appBar: AppBar(
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        title: Text(
          "Buyurtmalar hisoboti",
          style:
              TextStyle(color: ColorHex.colorFromHex("#FFFFFF"), fontSize: 18),
        ),
        elevation: 0.5,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/images/search.svg")),
          IconButton(
              onPressed: () {
                bottomsheet(context, size);
              },
              icon: SvgPicture.asset("assets/images/calendar.svg")),
          SizedBox(
            width: 7,
          )
        ],
      ),
      body: Window(),
    );

  
  

  }
  
  



  Future bottomsheet(BuildContext context, Size size) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: size.height * 0.7,
          width: size.width,
          padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 20),
          decoration: BoxDecoration(
              color: ColorHex.colorFromHex("#FFFFFF"),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7), topRight: Radius.circular(7))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 4,
                width: 110,
                decoration: BoxDecoration(
                    color: ColorHex.colorFromHex("#C4C4C4"),
                    borderRadius: BorderRadius.circular(4)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Saralash",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 7),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: ColorHex.colorFromHex("#E0E0E0")),
                      borderRadius: BorderRadius.circular(7)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dateOrTitle ? date1 : "Davr boshlanishi",
                        style: dateOrTitle
                            ? TextStyle(
                                color: ColorHex.colorFromHex("#000000"),
                                fontWeight: FontWeight.bold,
                                fontSize: 16)
                            : TextStyle(
                                color: ColorHex.colorFromHex("#A3A3A3")),
                      ),
                      IconButton(
                          onPressed: () {
                            dateTimeRangePicker();
                          },
                          icon: SvgPicture.asset(
                            "assets/images/calendar.svg",
                            fit: BoxFit.scaleDown,
                            color: ColorHex.colorFromHex("#8896A1"),
                          ))
                    ],
                  )),
              SizedBox(height: 15),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 7),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: ColorHex.colorFromHex("#E0E0E0")),
                      borderRadius: BorderRadius.circular(7)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dateOrTitle ? date2 : "Davr tugashi",
                        style: dateOrTitle
                            ? TextStyle(
                                color: ColorHex.colorFromHex("#000000"),
                                fontWeight: FontWeight.bold,
                                fontSize: 16)
                            : TextStyle(
                                color: ColorHex.colorFromHex("#A3A3A3")),
                      ),
                      IconButton(
                          onPressed: () {
                             dateTimeRangePicker();
                          },
                          icon: SvgPicture.asset(
                            "assets/images/calendar.svg",
                            fit: BoxFit.scaleDown,
                            color: ColorHex.colorFromHex("#8896A1"),
                          ))
                    ],
                  )),
              Expanded(
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ButtonTheme(
                              height: 55,
                              child: OutlineButton(
                                child: Text('Bekor qilish',
                                    style: TextStyle(
                                        color:
                                            ColorHex.colorFromHex("#FF4842"))),
                                borderSide: BorderSide(
                                  color: ColorHex.colorFromHex("#FF4842"),
                                  style: BorderStyle.solid,
                                  width: 1,
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                              child: FlatButton(
                            height: 55,
                            onPressed: () {},
                            child: Text(
                              "Tasdiqlash",
                              style: TextStyle(
                                  color: ColorHex.colorFromHex("#FFFFFF")),
                            ),
                            color: ColorHex.colorFromHex("#2755A5"),
                          )),
                        ],
                      )))
            ],
          ),
        );
      },
    );
  }
}

class Window extends StatelessWidget {
  const Window({
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
