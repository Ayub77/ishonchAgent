// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agent/allpage/customersClick/%20pictureReport.dart';
import 'package:agent/allpage/customersClick/customerClick.dart';
import 'package:agent/funcsion/colorhex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'customGoods.dart';

class VisitInFull extends StatefulWidget {
  const VisitInFull({Key? key}) : super(key: key);

  @override
  _VisitInFullState createState() => _VisitInFullState();
}

class _VisitInFullState extends State<VisitInFull> {
  bool picture = false;
  bool label = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorHex.colorFromHex("#2755A5"),
        foregroundColor: ColorHex.colorFromHex("#FFFFFF").withOpacity(0.6),
        title: Text(
          "To‘liq tashrif",
          style: TextStyle(
              color: ColorHex.colorFromHex("#FFFFFF"),
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: picture ? 68 : 58,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 1),
            child: Card(
              margin: EdgeInsets.all(0),
              elevation: 0,
              color: ColorHex.colorFromHex("#FFFFFF"),
              child: InkWell(
                onTap: () {
                  picture = false;
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PictureReport()));
                  setState(() {});
                },
                child: Container(
                  padding: EdgeInsets.only(right: 25, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/images/pic.svg",
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Rasmli hisobot",
                                style: TextStyle(
                                    color: ColorHex.colorFromHex("#2755A5"),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              )
                            ],
                          ),
                          SvgPicture.asset(
                            "assets/images/right.svg",
                          ),
                        ],
                      ),
                      picture
                          ? Container(
                              margin: EdgeInsets.only(top: 10, bottom: 5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  SvgPicture.asset(
                                    "assets/images/info1.svg",
                                    width: 13,
                                    height: 13,
                                    color: ColorHex.colorFromHex("#FF4842"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Buyurtma berish uchun avval rasmli hisobotni to‘ldiring",
                                    style: TextStyle(
                                        color: ColorHex.colorFromHex("#FF4842"),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                            )
                          : SizedBox(
                              height: 18,
                            )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 58,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 1),
            child: Card(
              margin: EdgeInsets.all(0),
              elevation: 0,
              color: ColorHex.colorFromHex("#FFFFFF"),
              child: InkWell(
                onTap: () {
                  picture = true;
                  setState(() {});
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CustomGoods()));
                },
                child: Container(
                  padding: EdgeInsets.only(right: 25, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/sumka.svg",
                            color: label
                                ? ColorHex.colorFromHex("#2755A5")
                                : ColorHex.colorFromHex("#8896A1"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Buyurtma berish",
                            style: TextStyle(
                                color: label
                                    ? ColorHex.colorFromHex("#2755A5")
                                    : ColorHex.colorFromHex("#8896A1"),
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          )
                        ],
                      ),
                      SvgPicture.asset(
                        "assets/images/right.svg",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          WindowClick(
              name: "So‘rovnoma",
              leftIcon: "assets/images/mes.svg",
              ontab: () {}),
          WindowClick(
              name: "Izoh qoldirish",
              leftIcon: "assets/images/question.svg",
              ontab: () {}),
        ],
      ),
    );
  }
}
